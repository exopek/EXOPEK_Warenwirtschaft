import '../../domain/models/Inventory.dart';

abstract class IInventoryUseCase {
  Future<List<Inventory>> getInventoryFromOrders(DateTime after);
  /* Future<Inventory> getInventoryById(int id);
  Future<Inventory> createInventory(Inventory inventory);
  Future<Inventory> updateInventory(Inventory inventory);
  Future<Inventory> deleteInventory(int id); */
}
