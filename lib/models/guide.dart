library guide;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'guide.g.dart';

/// Built value will use to generate Guide.
abstract class Guide implements Built<Guide, GuideBuilder> {
  int get id;
  @nullable
  String get realname;
  @nullable
  String get nickname;
  @nullable
  @BuiltValueField(wireName: 'nickname_zh')
  String get nicknameZh;
  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phone;
  @nullable
  String get avatar;

  Guide._();

  factory Guide([void Function(GuideBuilder) updates]) = _$Guide;

  String toJson() {
    return json.encode(serializers.serializeWith(Guide.serializer, this));
  }

  static Guide fromJson(String jsonString) {
    return serializers.deserializeWith(
        Guide.serializer, json.decode(jsonString));
  }

  static Serializer<Guide> get serializer => _$guideSerializer;
}
