library document;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'document.g.dart';

/// Built value Document model.
abstract class Document implements Built<Document, DocumentBuilder> {
  int get id;
  @nullable
  int get public;
  @nullable
  String get name;
  @nullable
  @BuiltValueField(wireName: 'name_zh')
  String get nameZh;
  @nullable
  String get version;
  @nullable
  String get text;
  @nullable
  @BuiltValueField(wireName: 'text_zh')
  String get textZh;

  Document._();

  factory Document([void Function(DocumentBuilder) updates]) = _$Document;

  String toJson() {
    return json.encode(serializers.serializeWith(Document.serializer, this));
  }

  static Document fromJson(String jsonString) {
    return serializers.deserializeWith(
        Document.serializer, json.decode(jsonString));
  }

  static Serializer<Document> get serializer => _$documentSerializer;
}
