library activity_group;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'activity_group.g.dart';

/// Built value ActivityGroup model.
abstract class ActivityGroup
    implements Built<ActivityGroup, ActivityGroupBuilder> {
  // Fields

  ActivityGroup._();

  factory ActivityGroup([void Function(ActivityGroupBuilder) updates]) =
      _$ActivityGroup;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ActivityGroup.serializer, this));
  }

  static ActivityGroup fromJson(String jsonString) {
    return serializers.deserializeWith(
        ActivityGroup.serializer, json.decode(jsonString));
  }

  static Serializer<ActivityGroup> get serializer => _$activityGroupSerializer;
}
