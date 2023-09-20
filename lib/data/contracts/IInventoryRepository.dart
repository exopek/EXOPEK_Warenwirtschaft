import '../../domain/models/Inventory.dart';

abstract class IInventoryRepository {
  Future<List<Inventory>> getInventory();
  Future<Inventory> getInventoryById(int id);
  Future<void> createInventory(Inventory inventory);
  Future<void> updateInventory(Inventory inventory);
  Future<Inventory> deleteInventory(int id);
  Future<List<Inventory>> getInventoryByDate(DateTime date);
}
