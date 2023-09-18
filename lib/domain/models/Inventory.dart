import 'package:freezed_annotation/freezed_annotation.dart';

part 'Inventory.freezed.dart';
part 'Inventory.g.dart';

enum InventoryType { product, merge }

@freezed
class Inventory with _$Inventory {
  factory Inventory({
    required int id,
    required String name,
    required String type,
    required int quantity,
    required double price,
    required String internalSku,
  }) = _Inventory;

  factory Inventory.fromJson(Map<String, dynamic> json) =>
      _$InventoryFromJson(json);
}
