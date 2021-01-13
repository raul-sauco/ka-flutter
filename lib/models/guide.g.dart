// GENERATED CODE - DO NOT MODIFY BY HAND

part of guide;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Guide> _$guideSerializer = new _$GuideSerializer();

class _$GuideSerializer implements StructuredSerializer<Guide> {
  @override
  final Iterable<Type> types = const [Guide, _$Guide];
  @override
  final String wireName = 'Guide';

  @override
  Iterable<Object> serialize(Serializers serializers, Guide object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.realname != null) {
      result
        ..add('realname')
        ..add(serializers.serialize(object.realname,
            specifiedType: const FullType(String)));
    }
    if (object.nickname != null) {
      result
        ..add('nickname')
        ..add(serializers.serialize(object.nickname,
            specifiedType: const FullType(String)));
    }
    if (object.nicknameZh != null) {
      result
        ..add('nickname_zh')
        ..add(serializers.serialize(object.nicknameZh,
            specifiedType: const FullType(String)));
    }
    if (object.phone != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    if (object.avatar != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(object.avatar,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Guide deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GuideBuilder();

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
        case 'realname':
          result.realname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nickname':
          result.nickname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nickname_zh':
          result.nicknameZh = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatar':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Guide extends Guide {
  @override
  final int id;
  @override
  final String realname;
  @override
  final String nickname;
  @override
  final String nicknameZh;
  @override
  final String phone;
  @override
  final String avatar;

  factory _$Guide([void Function(GuideBuilder) updates]) =>
      (new GuideBuilder()..update(updates)).build();

  _$Guide._(
      {this.id,
      this.realname,
      this.nickname,
      this.nicknameZh,
      this.phone,
      this.avatar})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Guide', 'id');
    }
  }

  @override
  Guide rebuild(void Function(GuideBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuideBuilder toBuilder() => new GuideBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Guide &&
        id == other.id &&
        realname == other.realname &&
        nickname == other.nickname &&
        nicknameZh == other.nicknameZh &&
        phone == other.phone &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), realname.hashCode),
                    nickname.hashCode),
                nicknameZh.hashCode),
            phone.hashCode),
        avatar.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Guide')
          ..add('id', id)
          ..add('realname', realname)
          ..add('nickname', nickname)
          ..add('nicknameZh', nicknameZh)
          ..add('phone', phone)
          ..add('avatar', avatar))
        .toString();
  }
}

class GuideBuilder implements Builder<Guide, GuideBuilder> {
  _$Guide _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _realname;
  String get realname => _$this._realname;
  set realname(String realname) => _$this._realname = realname;

  String _nickname;
  String get nickname => _$this._nickname;
  set nickname(String nickname) => _$this._nickname = nickname;

  String _nicknameZh;
  String get nicknameZh => _$this._nicknameZh;
  set nicknameZh(String nicknameZh) => _$this._nicknameZh = nicknameZh;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _avatar;
  String get avatar => _$this._avatar;
  set avatar(String avatar) => _$this._avatar = avatar;

  GuideBuilder();

  GuideBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _realname = _$v.realname;
      _nickname = _$v.nickname;
      _nicknameZh = _$v.nicknameZh;
      _phone = _$v.phone;
      _avatar = _$v.avatar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Guide other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Guide;
  }

  @override
  void update(void Function(GuideBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Guide build() {
    final _$result = _$v ??
        new _$Guide._(
            id: id,
            realname: realname,
            nickname: nickname,
            nicknameZh: nicknameZh,
            phone: phone,
            avatar: avatar);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
