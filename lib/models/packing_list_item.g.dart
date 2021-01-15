// GENERATED CODE - DO NOT MODIFY BY HAND

part of packing_list_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PackingListItem> _$packingListItemSerializer =
    new _$PackingListItemSerializer();

class _$PackingListItemSerializer
    implements StructuredSerializer<PackingListItem> {
  @override
  final Iterable<Type> types = const [PackingListItem, _$PackingListItem];
  @override
  final String wireName = 'PackingListItem';

  @override
  Iterable<Object> serialize(Serializers serializers, PackingListItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'trip_id',
      serializers.serialize(object.tripId, specifiedType: const FullType(int)),
      'packing_list_item_id',
      serializers.serialize(object.packingListItemId,
          specifiedType: const FullType(int)),
      'item',
      serializers.serialize(object.item,
          specifiedType: const FullType(PackingListDefaultItem)),
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
  PackingListItem deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PackingListItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'trip_id':
          result.tripId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'packing_list_item_id':
          result.packingListItemId = serializers.deserialize(value,
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
        case 'item':
          result.item.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PackingListDefaultItem))
              as PackingListDefaultItem);
          break;
      }
    }

    return result.build();
  }
}

class _$PackingListItem extends PackingListItem {
  @override
  final int tripId;
  @override
  final int packingListItemId;
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
  @override
  final PackingListDefaultItem item;

  factory _$PackingListItem([void Function(PackingListItemBuilder) updates]) =>
      (new PackingListItemBuilder()..update(updates)).build();

  _$PackingListItem._(
      {this.tripId,
      this.packingListItemId,
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
      this.order,
      this.item})
      : super._() {
    if (tripId == null) {
      throw new BuiltValueNullFieldError('PackingListItem', 'tripId');
    }
    if (packingListItemId == null) {
      throw new BuiltValueNullFieldError(
          'PackingListItem', 'packingListItemId');
    }
    if (item == null) {
      throw new BuiltValueNullFieldError('PackingListItem', 'item');
    }
  }

  @override
  PackingListItem rebuild(void Function(PackingListItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PackingListItemBuilder toBuilder() =>
      new PackingListItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PackingListItem &&
        tripId == other.tripId &&
        packingListItemId == other.packingListItemId &&
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
        order == other.order &&
        item == other.item;
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
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                tripId
                                                                    .hashCode),
                                                            packingListItemId
                                                                .hashCode),
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
            order.hashCode),
        item.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PackingListItem')
          ..add('tripId', tripId)
          ..add('packingListItemId', packingListItemId)
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
          ..add('order', order)
          ..add('item', item))
        .toString();
  }
}

class PackingListItemBuilder
    implements Builder<PackingListItem, PackingListItemBuilder> {
  _$PackingListItem _$v;

  int _tripId;
  int get tripId => _$this._tripId;
  set tripId(int tripId) => _$this._tripId = tripId;

  int _packingListItemId;
  int get packingListItemId => _$this._packingListItemId;
  set packingListItemId(int packingListItemId) =>
      _$this._packingListItemId = packingListItemId;

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

  PackingListDefaultItemBuilder _item;
  PackingListDefaultItemBuilder get item =>
      _$this._item ??= new PackingListDefaultItemBuilder();
  set item(PackingListDefaultItemBuilder item) => _$this._item = item;

  PackingListItemBuilder();

  PackingListItemBuilder get _$this {
    if (_$v != null) {
      _tripId = _$v.tripId;
      _packingListItemId = _$v.packingListItemId;
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
      _item = _$v.item?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PackingListItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PackingListItem;
  }

  @override
  void update(void Function(PackingListItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PackingListItem build() {
    _$PackingListItem _$result;
    try {
      _$result = _$v ??
          new _$PackingListItem._(
              tripId: tripId,
              packingListItemId: packingListItemId,
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
              order: order,
              item: item.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'item';
        item.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PackingListItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
