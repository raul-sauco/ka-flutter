import 'package:flutter/material.dart';

import '../../helpers/document_helper.dart';
import '../../models/document.dart';
import '../../screens/document/document_details.dart';

/// Draws one document details into a list widget.
class DocumentListItem extends StatelessWidget {
  final Document document;
  DocumentListItem({@required this.document});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(DocumentHelper.getDocumentName(document)),
        subtitle: document.version == null
            ? null
            : Text('Version: ${document.version}'),
        onTap: () {
          Navigator.pushNamed(
            context,
            DocumentDetailPage.id,
            arguments: document,
          );
        },
      ),
    );
  }
}
