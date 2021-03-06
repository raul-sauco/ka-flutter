library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'activity_group.dart';
import 'document.dart';
import 'event.dart';
import 'guide.dart';
import 'packing_list_default_item.dart';
import 'packing_list_item.dart';
import 'trip.dart';

part 'serializers.g.dart';

@SerializersFor([
  ActivityGroup,
  Document,
  Event,
  Guide,
  PackingListDefaultItem,
  PackingListItem,
  Trip,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
