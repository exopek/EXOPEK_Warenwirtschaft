// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Inventory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Inventory _$$_InventoryFromJson(Map<String, dynamic> json) => _$_Inventory(
      id: json['id'] as int?,
      name: json['name'] as String,
      type: json['type'] as String,
      quantity: json['quantity'] as int,
      price: (json['price'] as num).toDouble(),
      internalSku: json['internalSku'] as String,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_InventoryToJson(_$_Inventory instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'quantity': instance.quantity,
      'price': instance.price,
      'internalSku': instance.internalSku,
      'created_at': instance.createdAt?.toIso8601String(),
    };
