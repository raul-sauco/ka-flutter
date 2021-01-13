library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'guide.dart';
import 'trip.dart';

part 'serializers.g.dart';

@SerializersFor([Trip, Guide])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
