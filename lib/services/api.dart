import 'dart:async';
import 'dart:io';

import 'package:global_configuration/global_configuration.dart';
import 'package:http/http.dart' as http;

import '../helpers/http_pagination_helper.dart';

/// Encapsulates common http request logic.
class Api {
  Map<String, String> _headers;
  Map<String, String> params;
  bool _hasNextPage;
  String _nextPageUrl;
  // Let consumers indicate endpoint or override full url.
  String domain;
  String endpoint;

  Api({this.endpoint, this.params}) {
    String accessToken = GlobalConfiguration().getValue('accessToken');
    if (accessToken == null) {
      throw new Exception('No access token found');
    }
    _headers = {
      HttpHeaders.authorizationHeader: "Bearer $accessToken",
      HttpHeaders.contentTypeHeader: 'application/json',
    };
    domain = GlobalConfiguration().getValue('apiDomain');
    _nextPageUrl = Uri.https(domain, endpoint, params).toString();
    _hasNextPage = true;
  }

  /// Returns the first page of data. This method can be used to reset
  /// pagination or if in doubt if the service has been initialized.
  /// It is equivalent to `getNextPage()` when no data has been fetched.
  Future<dynamic> getItems() => getNextPage();

  /// Return wether this paginated service has a next page of data.
  bool hasNextPage() => this._hasNextPage;

  Future<dynamic> getNextPage() async {
    if (!this._hasNextPage) {
      throw Exception('There is no next page of data');
    }
    print('Sending request to $_nextPageUrl');
    var response = await http.get(_nextPageUrl, headers: _headers);
    if (response.statusCode == 200) {
      _hasNextPage = HttpPaginationHelper.hasNextPage(response);
      _nextPageUrl =
          _hasNextPage ? HttpPaginationHelper.getNextPageUrl(response) : null;
      return response.body;
    } else {
      throw Exception("Wrong response code ${response.statusCode}");
    }
  }

  // Get one item from this API's endpoint indicating its ID.
  Future<dynamic> getItem(int id, [Map<String, String> params]) async {
    Uri uri = Uri.https(domain, '$endpoint/$id', params);
    var response = await http.get(uri, headers: _headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception("Wrong response code ${response.statusCode}");
    }
  }
}
