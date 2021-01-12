import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:global_configuration/global_configuration.dart';
import 'package:http/http.dart' as http;

import '../helpers/http_pagination_helper.dart';
import '../models/serializers.dart';
import '../models/trip.dart';

/// Manages serving trip data in a transparent way.
///
/// Right now this service makes an http request every time that data
/// is requested, later it can be updated to use a Sqlite database without
/// having to modify consumers.
class TripService {
  Map<String, String> _headers;
  bool _hasNextPage;
  String _nextPageUrl;

  TripService() {
    String accessToken = GlobalConfiguration().getValue('accessToken');
    if (accessToken == null) {
      throw new Exception('No access token found');
    }
    this._headers = {HttpHeaders.authorizationHeader: "Bearer $accessToken"};
    String apiUrl = GlobalConfiguration().getValue('apiUrl');
    this._nextPageUrl = '$apiUrl/trips?expand=name';
    this._hasNextPage = true;
  }

  /// Returns the first page of trip data. This method can be used to reset
  /// pagination or if in doubt if the service has been initialized.
  Future<List<Trip>> getTrips() => this.getNextPage();

  /// Return wether this paginated service has a next page of data.
  bool hasNextPage() => this._hasNextPage;

  /// Returns the next page of data. Consumers are responsible for checking
  /// previously if there is a next page by calling `hasNextPage`.
  /// If this is the first call to this instance,
  /// it is equivalent to `getTrips()`
  Future<List<Trip>> getNextPage() async {
    if (!this._hasNextPage) {
      throw Exception('There is no next page of data');
    }
    print('TripService: fetching $_nextPageUrl');
    var response = await http.get(this._nextPageUrl, headers: this._headers);
    if (response.statusCode == 200) {
      this._hasNextPage = HttpPaginationHelper.hasNextPage(response);
      this._nextPageUrl = this._hasNextPage
          ? HttpPaginationHelper.getNextPageUrl(response)
          : null;
      return (jsonDecode(response.body) as List)
          .map((tripJson) =>
              serializers.deserializeWith(Trip.serializer, tripJson))
          .toList();
    } else {
      throw Exception("Wrong response code ${response.statusCode}");
    }
  }
}
