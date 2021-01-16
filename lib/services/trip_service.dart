import 'dart:async';
import 'dart:convert';

import '../models/serializers.dart';
import '../models/trip.dart';
import 'api.dart';

/// Manages serving `Trip` data in a transparent way.
///
/// Right now this service makes an http request every time that data
/// is requested, later it can be updated to use a Sqlite database without
/// having to modify consumers.
class TripService {
  final String endpoint = 'trips';
  Api _api;

  TripService({String query}) {
    Map<String, String> params = {'expand': 'name,ags'};
    if (query != null) {
      params['q'] = query;
    }
    _api = Api(endpoint: endpoint, params: params);
  }

  /// Return wether this paginated service has a next page of data.
  bool hasNextPage() => _api.hasNextPage();

  /// Returns the next page of data. Consumers are responsible for checking
  /// previously if there is a next page by calling `hasNextPage`.
  Future<List<Trip>> getNextPage() async {
    var data = await _api.getNextPage();
    return (jsonDecode(data) as List)
        .map((json) => serializers.deserializeWith(Trip.serializer, json))
        .toList();
  }
}
