library packing_list_default_item;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'packing_list_default_item.g.dart';

abstract class PackingListDefaultItem
    implements Built<PackingListDefaultItem, PackingListDefaultItemBuilder> {
  int get id;
  @nullable
  String get name;
  @nullable
  @BuiltValueField(wireName: 'name_zh')
  String get nameZh;
  @nullable
  String get remarks;
  @nullable
  @BuiltValueField(wireName: 'remarks_zh')
  String get remarksZh;
  @nullable
  String get description;
  @nullable
  @BuiltValueField(wireName: 'description_zh')
  String get descriptionZh;
  @nullable
  String get footer;
  @nullable
  @BuiltValueField(wireName: 'footer_zh')
  String get footerZh;
  @nullable
  String get image;
  @nullable
  int get bring;
  @nullable
  String get quantity;
  @nullable
  int get order;
  // Ignore blameable attributes.

  PackingListDefaultItem._();

  factory PackingListDefaultItem(
          [void Function(PackingListDefaultItemBuilder) updates]) =
      _$PackingListDefaultItem;

  String toJson() {
    return json.encode(
        serializers.serializeWith(PackingListDefaultItem.serializer, this));
  }

  static PackingListDefaultItem fromJson(String jsonString) {
    return serializers.deserializeWith(
        PackingListDefaultItem.serializer, json.decode(jsonString));
  }

  static Serializer<PackingListDefaultItem> get serializer =>
      _$packingListDefaultItemSerializer;
}
