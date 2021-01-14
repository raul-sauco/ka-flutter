import '../models/document.dart';

/// Helper functionality for the `Document` model.
class DocumentHelper {
  /// Get a human readable version of the document's name.
  static String getDocumentName(Document document) {
    if (document.name != null && document.name != '') {
      return document.name;
    }
    if (document.nameZh != null && document.nameZh != '') {
      return document.nameZh;
    }
    return document.id.toString();
  }
}
