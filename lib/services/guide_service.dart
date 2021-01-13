import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:global_configuration/global_configuration.dart';
import 'package:http/http.dart' as http;

import '../helpers/http_pagination_helper.dart';
import '../models/serializers.dart';
import '../models/guide.dart';

/// Abstraction layer for `Guide` data.
class GuideService {
  Map<String, String> _headers;
  bool _hasNextPage;
  String _nextPageUrl;
  int tripId;

  GuideService({this.tripId}) {
    String accessToken = GlobalConfiguration().getValue('accessToken');
    if (accessToken == null) {
      throw new Exception('No access token found');
    }
    this._headers = {HttpHeaders.authorizationHeader: "Bearer $accessToken"};
    String apiUrl = GlobalConfiguration().getValue('apiUrl');
    // Take into account tripId when setting initial URL.
    this._nextPageUrl =
        tripId == null ? '$apiUrl/guides' : '$apiUrl/guides?trip-id=$tripId';
    this._hasNextPage = true;
  }

  /// Returns the first page of data. This method can be used to reset
  /// pagination or if in doubt if the service has been initialized.
  /// It is equivalent to `getNextPage()` when no data has been fetched.
  Future<List<Guide>> getGuides() => this.getNextPage();

  /// Return wether this paginated service has a next page of data.
  bool hasNextPage() => this._hasNextPage;

  /// Returns the next page of data. Consumers are responsible for checking
  /// previously if there is a next page by calling `hasNextPage`.
  Future<List<Guide>> getNextPage() async {
    if (!this._hasNextPage) {
      throw Exception('There is no next page of data');
    }
    print('GuideService: fetching $_nextPageUrl');
    var response = await http.get(this._nextPageUrl, headers: this._headers);
    if (response.statusCode == 200) {
      this._hasNextPage = HttpPaginationHelper.hasNextPage(response);
      this._nextPageUrl = this._hasNextPage
          ? HttpPaginationHelper.getNextPageUrl(response)
          : null;
      return (jsonDecode(response.body) as List)
          .map((guideJson) =>
              serializers.deserializeWith(Guide.serializer, guideJson))
          .toList();
    } else {
      throw Exception("Wrong response code ${response.statusCode}");
    }
  }
}
