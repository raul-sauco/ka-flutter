// GENERATED CODE - DO NOT MODIFY BY HAND

part of packing_list_default_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PackingListDefaultItem> _$packingListDefaultItemSerializer =
    new _$PackingListDefaultItemSerializer();

class _$PackingListDefaultItemSerializer
    implements StructuredSerializer<PackingListDefaultItem> {
  @override
  final Iterable<Type> types = const [
    PackingListDefaultItem,
    _$PackingListDefaultItem
  ];
  @override
  final String wireName = 'PackingListDefaultItem';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PackingListDefaultItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
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
    if (object.remarks != null) {
      result
        ..add('remarks')
        ..add(serializers.serialize(object.remarks,
            specifiedType: const FullType(String)));
    }
    if (object.remarksZh != null) {
      result
        ..add('remarks_zh')
        ..add(serializers.serialize(object.remarksZh,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.descriptionZh != null) {
      result
        ..add('description_zh')
        ..add(serializers.serialize(object.descriptionZh,
            specifiedType: const FullType(String)));
    }
    if (object.footer != null) {
      result
        ..add('footer')
        ..add(serializers.serialize(object.footer,
            specifiedType: const FullType(String)));
    }
    if (object.footerZh != null) {
      result
        ..add('footer_zh')
        ..add(serializers.serialize(object.footerZh,
            specifiedType: const FullType(String)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.bring != null) {
      result
        ..add('bring')
        ..add(serializers.serialize(object.bring,
            specifiedType: const FullType(int)));
    }
    if (object.quantity != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(object.quantity,
            specifiedType: const FullType(String)));
    }
    if (object.order != null) {
      result
        ..add('order')
        ..add(serializers.serialize(object.order,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  PackingListDefaultItem deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PackingListDefaultItemBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_zh':
          result.nameZh = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'remarks':
          result.remarks = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'remarks_zh':
          result.remarksZh = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description_zh':
          result.descriptionZh = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'footer':
          result.footer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'footer_zh':
          result.footerZh = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bring':
          result.bring = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PackingListDefaultItem extends PackingListDefaultItem {
  @override
  final int id;
  @override
  final String name;
  @override
  final String nameZh;
  @override
  final String remarks;
  @override
  final String remarksZh;
  @override
  final String description;
  @override
  final String descriptionZh;
  @override
  final String footer;
  @override
  final String footerZh;
  @override
  final String image;
  @override
  final int bring;
  @override
  final String quantity;
  @override
  final int order;

  factory _$PackingListDefaultItem(
          [void Function(PackingListDefaultItemBuilder) updates]) =>
      (new PackingListDefaultItemBuilder()..update(updates)).build();

  _$PackingListDefaultItem._(
      {this.id,
      this.name,
      this.nameZh,
      this.remarks,
      this.remarksZh,
      this.description,
      this.descriptionZh,
      this.footer,
      this.footerZh,
      this.image,
      this.bring,
      this.quantity,
      this.order})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('PackingListDefaultItem', 'id');
    }
  }

  @override
  PackingListDefaultItem rebuild(
          void Function(PackingListDefaultItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PackingListDefaultItemBuilder toBuilder() =>
      new PackingListDefaultItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PackingListDefaultItem &&
        id == other.id &&
        name == other.name &&
        nameZh == other.nameZh &&
        remarks == other.remarks &&
        remarksZh == other.remarksZh &&
        description == other.description &&
        descriptionZh == other.descriptionZh &&
        footer == other.footer &&
        footerZh == other.footerZh &&
        image == other.image &&
        bring == other.bring &&
        quantity == other.quantity &&
        order == other.order;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, id.hashCode),
                                                    name.hashCode),
                                                nameZh.hashCode),
                                            remarks.hashCode),
                                        remarksZh.hashCode),
                                    description.hashCode),
                                descriptionZh.hashCode),
                            footer.hashCode),
                        footerZh.hashCode),
                    image.hashCode),
                bring.hashCode),
            quantity.hashCode),
        order.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PackingListDefaultItem')
          ..add('id', id)
          ..add('name', name)
          ..add('nameZh', nameZh)
          ..add('remarks', remarks)
          ..add('remarksZh', remarksZh)
          ..add('description', description)
          ..add('descriptionZh', descriptionZh)
          ..add('footer', footer)
          ..add('footerZh', footerZh)
          ..add('image', image)
          ..add('bring', bring)
          ..add('quantity', quantity)
          ..add('order', order))
        .toString();
  }
}

class PackingListDefaultItemBuilder
    implements Builder<PackingListDefaultItem, PackingListDefaultItemBuilder> {
  _$PackingListDefaultItem _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _nameZh;
  String get nameZh => _$this._nameZh;
  set nameZh(String nameZh) => _$this._nameZh = nameZh;

  String _remarks;
  String get remarks => _$this._remarks;
  set remarks(String remarks) => _$this._remarks = remarks;

  String _remarksZh;
  String get remarksZh => _$this._remarksZh;
  set remarksZh(String remarksZh) => _$this._remarksZh = remarksZh;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _descriptionZh;
  String get descriptionZh => _$this._descriptionZh;
  set descriptionZh(String descriptionZh) =>
      _$this._descriptionZh = descriptionZh;

  String _footer;
  String get footer => _$this._footer;
  set footer(String footer) => _$this._footer = footer;

  String _footerZh;
  String get footerZh => _$this._footerZh;
  set footerZh(String footerZh) => _$this._footerZh = footerZh;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  int _bring;
  int get bring => _$this._bring;
  set bring(int bring) => _$this._bring = bring;

  String _quantity;
  String get quantity => _$this._quantity;
  set quantity(String quantity) => _$this._quantity = quantity;

  int _order;
  int get order => _$this._order;
  set order(int order) => _$this._order = order;

  PackingListDefaultItemBuilder();

  PackingListDefaultItemBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _nameZh = _$v.nameZh;
      _remarks = _$v.remarks;
      _remarksZh = _$v.remarksZh;
      _description = _$v.description;
      _descriptionZh = _$v.descriptionZh;
      _footer = _$v.footer;
      _footerZh = _$v.footerZh;
      _image = _$v.image;
      _bring = _$v.bring;
      _quantity = _$v.quantity;
      _order = _$v.order;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PackingListDefaultItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PackingListDefaultItem;
  }

  @override
  void update(void Function(PackingListDefaultItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PackingListDefaultItem build() {
    final _$result = _$v ??
        new _$PackingListDefaultItem._(
            id: id,
            name: name,
            nameZh: nameZh,
            remarks: remarks,
            remarksZh: remarksZh,
            description: description,
            descriptionZh: descriptionZh,
            footer: footer,
            footerZh: footerZh,
            image: image,
            bring: bring,
            quantity: quantity,
            order: order);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
