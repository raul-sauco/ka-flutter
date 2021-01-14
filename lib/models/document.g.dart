// GENERATED CODE - DO NOT MODIFY BY HAND

part of document;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Document> _$documentSerializer = new _$DocumentSerializer();

class _$DocumentSerializer implements StructuredSerializer<Document> {
  @override
  final Iterable<Type> types = const [Document, _$Document];
  @override
  final String wireName = 'Document';

  @override
  Iterable<Object> serialize(Serializers serializers, Document object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.public != null) {
      result
        ..add('public')
        ..add(serializers.serialize(object.public,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.nameZh != null) {
      result
        ..add('name_zh')
        ..add(serializers.serialize(object.nameZh,
            specifiedType: const FullType(String)));
    }
    if (object.version != null) {
      result
        ..add('version')
        ..add(serializers.serialize(object.version,
            specifiedType: const FullType(String)));
    }
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.textZh != null) {
      result
        ..add('text_zh')
        ..add(serializers.serialize(object.textZh,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Document deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DocumentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'public':
          result.public = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_zh':
          result.nameZh = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'text_zh':
          result.textZh = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Document extends Document {
  @override
  final int id;
  @override
  final int public;
  @override
  final String name;
  @override
  final String nameZh;
  @override
  final String version;
  @override
  final String text;
  @override
  final String textZh;

  factory _$Document([void Function(DocumentBuilder) updates]) =>
      (new DocumentBuilder()..update(updates)).build();

  _$Document._(
      {this.id,
      this.public,
      this.name,
      this.nameZh,
      this.version,
      this.text,
      this.textZh})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Document', 'id');
    }
  }

  @override
  Document rebuild(void Function(DocumentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentBuilder toBuilder() => new DocumentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Document &&
        id == other.id &&
        public == other.public &&
        name == other.name &&
        nameZh == other.nameZh &&
        version == other.version &&
        text == other.text &&
        textZh == other.textZh;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), public.hashCode),
                        name.hashCode),
                    nameZh.hashCode),
                version.hashCode),
            text.hashCode),
        textZh.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Document')
          ..add('id', id)
          ..add('public', public)
          ..add('name', name)
          ..add('nameZh', nameZh)
          ..add('version', version)
          ..add('text', text)
          ..add('textZh', textZh))
        .toString();
  }
}

class DocumentBuilder implements Builder<Document, DocumentBuilder> {
  _$Document _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _public;
  int get public => _$this._public;
  set public(int public) => _$this._public = public;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _nameZh;
  String get nameZh => _$this._nameZh;
  set nameZh(String nameZh) => _$this._nameZh = nameZh;

  String _version;
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  String _textZh;
  String get textZh => _$this._textZh;
  set textZh(String textZh) => _$this._textZh = textZh;

  DocumentBuilder();

  DocumentBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _public = _$v.public;
      _name = _$v.name;
      _nameZh = _$v.nameZh;
      _version = _$v.version;
      _text = _$v.text;
      _textZh = _$v.textZh;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Document other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Document;
  }

  @override
  void update(void Function(DocumentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Document build() {
    final _$result = _$v ??
        new _$Document._(
            id: id,
            public: public,
            name: name,
            nameZh: nameZh,
            version: version,
            text: text,
            textZh: textZh);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
