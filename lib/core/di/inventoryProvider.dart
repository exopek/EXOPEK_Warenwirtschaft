import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inventory_app/application/usecase/InventoryUseCase.dart';

import '../../domain/models/Inventory.dart';
import '../../presentation/inventory/InventoryListController.dart';

final inventoryUseCaseProvider = Provider((ref) => InventoryUseCase(ref));

final inventoryListProvider =
    FutureProvider.autoDispose<List<Inventory>>((ref) async {
  final selectedDate = ref.watch(datePickerStateProvider);
  final data = await ref
      .watch(inventoryUseCaseProvider)
      .getInventoryFromOrders(selectedDate);
  return data;
});

final datePickerStateProvider =
    StateProvider<DateTime>((ref) => DateTime(2023, 7, 1));

final inventoryListControllerProvider =
    StateNotifierProvider((ref) => InventoryListController(ref));
