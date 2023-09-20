// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Inventory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Inventory _$InventoryFromJson(Map<String, dynamic> json) {
  return _Inventory.fromJson(json);
}

/// @nodoc
mixin _$Inventory {
  @JsonKey(includeToJson: false)
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get internalSku => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventoryCopyWith<Inventory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryCopyWith<$Res> {
  factory $InventoryCopyWith(Inventory value, $Res Function(Inventory) then) =
      _$InventoryCopyWithImpl<$Res, Inventory>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) int? id,
      String name,
      String type,
      int quantity,
      double price,
      String internalSku,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$InventoryCopyWithImpl<$Res, $Val extends Inventory>
    implements $InventoryCopyWith<$Res> {
  _$InventoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? type = null,
    Object? quantity = null,
    Object? price = null,
    Object? internalSku = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      internalSku: null == internalSku
          ? _value.internalSku
          : internalSku // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InventoryCopyWith<$Res> implements $InventoryCopyWith<$Res> {
  factory _$$_InventoryCopyWith(
          _$_Inventory value, $Res Function(_$_Inventory) then) =
      __$$_InventoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) int? id,
      String name,
      String type,
      int quantity,
      double price,
      String internalSku,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$_InventoryCopyWithImpl<$Res>
    extends _$InventoryCopyWithImpl<$Res, _$_Inventory>
    implements _$$_InventoryCopyWith<$Res> {
  __$$_InventoryCopyWithImpl(
      _$_Inventory _value, $Res Function(_$_Inventory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? type = null,
    Object? quantity = null,
    Object? price = null,
    Object? internalSku = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$_Inventory(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      internalSku: null == internalSku
          ? _value.internalSku
          : internalSku // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Inventory implements _Inventory {
  _$_Inventory(
      {@JsonKey(includeToJson: false) this.id,
      required this.name,
      required this.type,
      required this.quantity,
      required this.price,
      required this.internalSku,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$_Inventory.fromJson(Map<String, dynamic> json) =>
      _$$_InventoryFromJson(json);

  @override
  @JsonKey(includeToJson: false)
  final int? id;
  @override
  final String name;
  @override
  final String type;
  @override
  final int quantity;
  @override
  final double price;
  @override
  final String internalSku;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Inventory(id: $id, name: $name, type: $type, quantity: $quantity, price: $price, internalSku: $internalSku, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Inventory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.internalSku, internalSku) ||
                other.internalSku == internalSku) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, type, quantity, price, internalSku, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InventoryCopyWith<_$_Inventory> get copyWith =>
      __$$_InventoryCopyWithImpl<_$_Inventory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InventoryToJson(
      this,
    );
  }
}

abstract class _Inventory implements Inventory {
  factory _Inventory(
      {@JsonKey(includeToJson: false) final int? id,
      required final String name,
      required final String type,
      required final int quantity,
      required final double price,
      required final String internalSku,
      @JsonKey(name: 'created_at') final DateTime? createdAt}) = _$_Inventory;

  factory _Inventory.fromJson(Map<String, dynamic> json) =
      _$_Inventory.fromJson;

  @override
  @JsonKey(includeToJson: false)
  int? get id;
  @override
  String get name;
  @override
  String get type;
  @override
  int get quantity;
  @override
  double get price;
  @override
  String get internalSku;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_InventoryCopyWith<_$_Inventory> get copyWith =>
      throw _privateConstructorUsedError;
}
