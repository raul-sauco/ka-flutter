import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../helpers/document_helper.dart';
import '../../models/document.dart';
import '../../services/document_service.dart';

/// Display the details of one `Document` model.
class DocumentDetailPage extends StatelessWidget {
  static const String id = '/document-detail';

  @override
  Widget build(BuildContext context) {
    final Document document = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(DocumentHelper.getDocumentName(document)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          future: DocumentService().getItem(id: document.id),
          builder: (BuildContext context, AsyncSnapshot<Document> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                // `document` is the simplified version with no content.
                Document fullDocument = snapshot.data;
                // Full html tag support may be needed.
                return Markdown(data: fullDocument.text);
              } else {
                return Center(child: Text('Done but not data'));
              }
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
