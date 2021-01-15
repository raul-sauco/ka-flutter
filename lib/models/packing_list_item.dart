library packing_list_item;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';
import 'packing_list_default_item.dart';

part 'packing_list_item.g.dart';

/// Encapsulates packing list items data and functionality.
abstract class PackingListItem
    implements Built<PackingListItem, PackingListItemBuilder> {
  @BuiltValueField(wireName: 'trip_id')
  int get tripId;
  @BuiltValueField(wireName: 'packing_list_item_id')
  int get packingListItemId;
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
  PackingListDefaultItem get item;

  String getName() {
    if (name != null && name.isNotEmpty) {
      return name;
    }
    return item.name ?? item.id;
  }

  String getRemarks() {
    if (remarks != null && remarks.isNotEmpty) {
      return remarks;
    }
    return item.remarks ?? '';
  }

  String getDescription() {
    if (description != null && description.isNotEmpty) {
      return description;
    }
    return item.description ?? '';
  }

  String getFooter() {
    if (footer != null && footer.isNotEmpty) {
      return footer;
    }
    return item.footer ?? '';
  }

  String getImageUrl() {
    if (image != null && image.isNotEmpty) {
      return image;
    }
    return item.image ?? '';
  }

  String getQuantity() {
    if (quantity != null && quantity.isNotEmpty) {
      return quantity;
    }
    return item.quantity ?? '';
  }

  int getBring() {
    return bring == null ? item.bring : bring;
  }

  int getOrder() {
    return order == null ? item.order : order;
  }

  PackingListItem._();

  factory PackingListItem([void Function(PackingListItemBuilder) updates]) =
      _$PackingListItem;

  String toJson() {
    return json
        .encode(serializers.serializeWith(PackingListItem.serializer, this));
  }

  static PackingListItem fromJson(String jsonString) {
    return serializers.deserializeWith(
        PackingListItem.serializer, json.decode(jsonString));
  }

  static Serializer<PackingListItem> get serializer =>
      _$packingListItemSerializer;
}
