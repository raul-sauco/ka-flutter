import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../models/trip.dart';
import '../../services/trip_service.dart';
import '../item_widgets/trip_list_tile.dart';

/// TripList displays `Trip` models as a list of items.
///
/// Instead of creating a custom solution for infinite scrolling, the widget
/// uses the infinite scroll pagination package.
/// https://pub.dev/packages/infinite_scroll_pagination
class TripList extends StatefulWidget {
  final String query;
  TripList({this.query = ''});

  @override
  _TripListState createState() => _TripListState();
}

class _TripListState extends State<TripList> {
  final PagingController<int, Trip> _pagingController =
      PagingController(firstPageKey: 0);
  TripService _tripService;

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems = await _tripService.getNextPage();
      if (!_tripService.hasNextPage()) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItems.length;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    // Rebuild in query change. Doing it like this works great, but it is
    // not very clear what we are doing, maybe update this logic to use
    // change notifier/provider to make it more readable.
    this._tripService = TripService(query: widget.query);
    _pagingController.refresh();
    return PagedListView<int, Trip>(
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate<Trip>(
        itemBuilder: (context, item, index) => TripListTile(
          trip: item,
        ),
      ),
    );
  }

  @override
  void dispose() {
    print('trip list dispose');
    _pagingController.dispose();
    super.dispose();
  }
}
