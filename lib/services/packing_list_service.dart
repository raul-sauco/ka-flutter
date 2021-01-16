import 'dart:async';
import 'dart:convert';

import '../models/packing_list_item.dart';
import '../models/serializers.dart';
import 'api.dart';

/// Abstraction layer for `PackingListItem` data.
class PackingListService {
  Api _api;

  PackingListService({tripId}) {
    _api = Api(
      endpoint: 'trip-packing-list-items',
      params: {'trip-id': tripId.toString(), 'expand': 'item'},
    );
  }

  /// Return wether this paginated service has a next page of data.
  bool hasNextPage() => _api.hasNextPage();

  Future<List<PackingListItem>> getNextPage() async {
    var data = await _api.getNextPage();
    return (jsonDecode(data) as List)
        .map((json) =>
            serializers.deserializeWith(PackingListItem.serializer, json))
        .toList();
  }
}
