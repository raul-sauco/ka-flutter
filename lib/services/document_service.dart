import 'dart:async';
import 'dart:convert';

import '../models/serializers.dart';
import '../models/document.dart';
import 'api.dart';

/// Abstraction layer for `Document` data.
class DocumentService {
  String query;
  final String endpoint = 'documents';
  Api _api;

  DocumentService({String query}) {
    _api = Api(endpoint: endpoint, params: query == null ? null : {'q': query});
  }

  /// Return wether this paginated service has a next page of data.
  bool hasNextPage() => _api.hasNextPage();

  /// Returns the next page of data. Consumers are responsible for checking
  /// previously if there is a next page by calling `hasNextPage`.
  Future<List<Document>> getNextPage() async {
    var data = await _api.getNextPage();
    return (jsonDecode(data) as List)
        .map((json) => serializers.deserializeWith(Document.serializer, json))
        .toList();
  }

  /// Get one `Document` by id.
  Future<Document> getItem({int id}) async {
    var itemJson = await _api.getItem(id);
    return serializers.deserializeWith(
        Document.serializer, jsonDecode(itemJson));
  }
}
