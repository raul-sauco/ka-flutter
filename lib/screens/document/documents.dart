import 'package:flutter/material.dart';

import '../../widgets/document/document_list.dart';
import '../../widgets/default_drawer.dart';
import '../../widgets/utils/app_search_bar.dart';

/// DocumentsPage displays a list of `Document` models.
class DocumentsPage extends StatefulWidget {
  static const String id = '/documents';

  @override
  _DocumentsPageState createState() => _DocumentsPageState();
}

class _DocumentsPageState extends State<DocumentsPage> {
  String _query = '';

  void _setQuery(String query) {
    setState(() {
      _query = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppSearchBar(
        title: 'Documents',
        searchCallback: _setQuery,
      ),
      drawer: DefaultDrawer(currentPage: DocumentsPage.id),
      body: DocumentList(query: _query),
    );
  }
}
