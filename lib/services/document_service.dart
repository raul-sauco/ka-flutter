import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:global_configuration/global_configuration.dart';
import 'package:http/http.dart' as http;

import '../helpers/http_pagination_helper.dart';
import '../models/serializers.dart';
import '../models/document.dart';

/// Manages serving document data in a transparent way.
class DocumentService {
  Map<String, String> _headers;
  bool _hasNextPage;
  String _nextPageUrl;
  String query;

  DocumentService({this.query}) {
    String accessToken = GlobalConfiguration().getValue('accessToken');
    if (accessToken == null) {
      throw new Exception('No access token found');
    }
    this._headers = {HttpHeaders.authorizationHeader: "Bearer $accessToken"};
    String apiUrl = GlobalConfiguration().getValue('apiUrl');
    this._nextPageUrl = '$apiUrl/documents';
    this._hasNextPage = true;

    // Add query string if not null
    if (this.query != '') {
      this._nextPageUrl += '?q=$query';
    }
  }

  /// Returns the first page of data. This method can be used to reset
  /// pagination or if in doubt if the service has been initialized.
  Future<List<Document>> getItems() => this.getNextPage();

  /// Return wether this paginated service has a next page of data.
  bool hasNextPage() => this._hasNextPage;

  /// Returns the next page of data. Consumers are responsible for checking
  /// previously if there is a next page by calling `hasNextPage`.
  /// If this is the first call to this instance,
  /// it is equivalent to `getItems()`
  Future<List<Document>> getNextPage() async {
    if (!this._hasNextPage) {
      throw Exception('There is no next page of data');
    }
    var response = await http.get(this._nextPageUrl, headers: this._headers);
    if (response.statusCode == 200) {
      this._hasNextPage = HttpPaginationHelper.hasNextPage(response);
      this._nextPageUrl = this._hasNextPage
          ? HttpPaginationHelper.getNextPageUrl(response)
          : null;
      return (jsonDecode(response.body) as List)
          .map((json) => serializers.deserializeWith(Document.serializer, json))
          .toList();
    } else {
      throw Exception("Wrong response code ${response.statusCode}");
    }
  }

  /// Get one `Document` by id.
  Future<Document> getItem({int id}) async {
    String apiUrl = GlobalConfiguration().getValue('apiUrl');
    var response =
        await http.get('$apiUrl/documents/$id', headers: this._headers);
    if (response.statusCode == 200) {
      print(response.body);
      return serializers.deserializeWith(
          Document.serializer, jsonDecode(response.body));
    } else {
      throw Exception("Wrong response code ${response.statusCode}");
    }
  }
}
