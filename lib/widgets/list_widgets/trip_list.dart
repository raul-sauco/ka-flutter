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
  @override
  _TripListState createState() => _TripListState();
}

class _TripListState extends State<TripList> {
  final TripService _tripService = TripService();
  final PagingController<int, Trip> _pagingController =
      PagingController(firstPageKey: 0);

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
    _pagingController.dispose();
    super.dispose();
  }
}
