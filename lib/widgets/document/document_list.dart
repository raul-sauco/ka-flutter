import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../models/document.dart';
import '../../services/document_service.dart';
import '../../widgets/document/document_list_item.dart';

/// DocumentList displays `Document` models as a list of items.
class DocumentList extends StatefulWidget {
  final String query;
  DocumentList({this.query = ''});

  @override
  _DocumentListState createState() => _DocumentListState();
}

class _DocumentListState extends State<DocumentList> {
  final PagingController<int, Document> _pagingController =
      PagingController(firstPageKey: 0);
  DocumentService _documentService;

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems = await _documentService.getNextPage();
      if (!_documentService.hasNextPage()) {
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
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _documentService = DocumentService(query: widget.query);
    _pagingController.refresh();
    return PagedListView<int, Document>(
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate<Document>(
        itemBuilder: (context, item, index) => DocumentListItem(document: item),
      ),
    );
  }
}
