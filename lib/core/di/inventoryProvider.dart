import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inventory_app/application/usecase/InventoryUseCase.dart';

import '../../data/repository/InventoryRepository.dart';
import '../../domain/models/Inventory.dart';
import '../../presentation/inventory/InventoryListController.dart';

final inventoryUseCaseProvider = Provider((ref) => InventoryUseCase(ref));

final inventoryListProvider =
    FutureProvider.autoDispose<List<Inventory>>((ref) async {
  final selectedDate = ref.watch(datePickerStateProvider);
  final refDate = ref.watch(lastDateInventoryStateProvider);
  final data = await ref
      .watch(inventoryUseCaseProvider)
      .getInventoryFromOrders(selectedDate, refDate);
  return data;
});

final datePickerStateProvider =
    StateProvider<DateTime>((ref) => DateTime.now());

final lastDateInventoryStateProvider =
    StateProvider<DateTime>((ref) => DateTime(2021, 12, 31));

final inventoryListControllerProvider =
    StateNotifierProvider((ref) => InventoryListController(ref));

final inventoryRepositoryProvider = Provider((ref) => InventoryRepoitory(ref));
