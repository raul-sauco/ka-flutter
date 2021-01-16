import 'dart:async';
import 'dart:convert';

import '../models/serializers.dart';
import '../models/guide.dart';
import 'api.dart';

/// Abstraction layer for `Guide` data.
class GuideService {
  final String endpoint = 'guides';
  Api _api;

  GuideService({int tripId}) {
    print(tripId.toString());
    _api = Api(endpoint: endpoint, params: {'trip-id': tripId.toString()});
  }

  /// Return wether this paginated service has a next page of data.
  bool hasNextPage() => _api.hasNextPage();

  /// Returns the next page of data. Consumers are responsible for checking
  /// previously if there is a next page by calling `hasNextPage`.
  Future<List<Guide>> getNextPage() async {
    var data = await _api.getNextPage();
    return (jsonDecode(data) as List)
        .map((json) => serializers.deserializeWith(Guide.serializer, json))
        .toList();
  }
}
