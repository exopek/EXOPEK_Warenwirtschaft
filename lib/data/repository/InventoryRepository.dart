import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../domain/models/Inventory.dart';
import '../contracts/IInventoryRepository.dart';

class InventoryRepoitory implements IInventoryRepository {
  InventoryRepoitory(this.ref);
  final Ref ref;

  final supabase = Supabase.instance.client;

  @override
  Future<List<Inventory>> getInventory() async {
    return [];
  }

  @override
  Future<Inventory> getInventoryById(int id) async {
    return Inventory(
        id: 1,
        name: "Test",
        type: "Test",
        quantity: 1,
        price: 1.0,
        internalSku: "Test",
        createdAt: DateTime.now());
  }

  @override
  Future<void> createInventory(Inventory inventory) async {
    Inventory inv = Inventory(
      name: inventory.name,
      type: inventory.type,
      quantity: inventory.quantity,
      price: inventory.price,
      internalSku: inventory.internalSku,
      createdAt: inventory.createdAt,
    );
    var result =
        await supabase.from("Inventory").upsert([inv.toJson()]).execute();
    print(result);
  }

  @override
  Future<void> updateInventory(Inventory inventory) async {
    await supabase.from("Inventory").update(inventory.toJson());
    print(inventory.toJson());
  }

  @override
  Future<Inventory> deleteInventory(int id) async {
    return Inventory(
        id: 1,
        name: "Test",
        type: "Test",
        quantity: 1,
        price: 1.0,
        internalSku: "Test",
        createdAt: DateTime.now());
  }

  @override
  Future<List<Inventory>> getInventoryByDate(DateTime date) async {
    final response =
        await supabase.from("Inventory").select().eq("created_at", date);
    if (response != null) {
      List<Inventory> inventory =
          response.map<Inventory>((e) => Inventory.fromJson(e)).toList();
      return inventory;
    }
    return [];
  }
}
