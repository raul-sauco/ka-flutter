import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../models/guide.dart';
import '../../models/trip.dart';
import '../../services/guide_service.dart';
import '../guide/guide_list_tile.dart';

/// GuideList displays `Guide` models as a list of items.
class GuideList extends StatefulWidget {
  final Trip trip;
  GuideList({@required this.trip});

  @override
  _GuideListState createState() => _GuideListState();
}

class _GuideListState extends State<GuideList> {
  final PagingController<int, Guide> _pagingController =
      PagingController(firstPageKey: 0);
  GuideService _guideService;

  @override
  void initState() {
    this._guideService = GuideService(tripId: widget.trip.id);
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems = await _guideService.getNextPage();
      if (!_guideService.hasNextPage()) {
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
    return PagedListView<int, Guide>(
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate<Guide>(
        itemBuilder: (context, item, index) => GuideListTile(
          guide: item,
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
