library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'document.dart';
import 'guide.dart';
import 'trip.dart';

part 'serializers.g.dart';

@SerializersFor([Document, Guide, Trip])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
