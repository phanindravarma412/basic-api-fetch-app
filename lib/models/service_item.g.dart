// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServiceItem> _$serviceItemSerializer = new _$ServiceItemSerializer();

class _$ServiceItemSerializer implements StructuredSerializer<ServiceItem> {
  @override
  final Iterable<Type> types = const [ServiceItem, _$ServiceItem];
  @override
  final String wireName = 'ServiceItem';

  @override
  Iterable<Object> serialize(Serializers serializers, ServiceItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  ServiceItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServiceItemBuilder();

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
      }
    }

    return result.build();
  }
}

class _$ServiceItem extends ServiceItem {
  @override
  final int id;

  factory _$ServiceItem([void Function(ServiceItemBuilder) updates]) =>
      (new ServiceItemBuilder()..update(updates)).build();

  _$ServiceItem._({this.id}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ServiceItem', 'id');
    }
  }

  @override
  ServiceItem rebuild(void Function(ServiceItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceItemBuilder toBuilder() => new ServiceItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceItem && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ServiceItem')..add('id', id))
        .toString();
  }
}

class ServiceItemBuilder implements Builder<ServiceItem, ServiceItemBuilder> {
  _$ServiceItem _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ServiceItemBuilder();

  ServiceItemBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ServiceItem;
  }

  @override
  void update(void Function(ServiceItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ServiceItem build() {
    final _$result = _$v ?? new _$ServiceItem._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
