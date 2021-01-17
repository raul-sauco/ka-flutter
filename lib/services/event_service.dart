import 'dart:async';
import 'dart:convert';

import '../models/serializers.dart';
import '../models/event.dart';
import 'api.dart';

/// Abstraction layer for `Event` data.
class EventService {
  final String endpoint = 'events';
  Api _api;

  EventService({int agId}) {
    _api = Api(endpoint: endpoint, params: {'ag-id': agId.toString()});
  }

  /// Return wether this paginated service has a next page of data.
  bool hasNextPage() => _api.hasNextPage();

  /// Returns the next page of data. Consumers are responsible for checking
  /// previously if there is a next page by calling `hasNextPage`.
  Future<List<Event>> getNextPage() async {
    var data = await _api.getNextPage();
    return (jsonDecode(data) as List)
        .map((json) => serializers.deserializeWith(Event.serializer, json))
        .toList();
  }

  /// Get one `Event` by id.
  Future<Event> getItem({int id}) async {
    var itemJson = await _api.getItem(id);
    return serializers.deserializeWith(Event.serializer, jsonDecode(itemJson));
  }
}
