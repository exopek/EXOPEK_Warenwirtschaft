import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inventory_app/domain/models/Inventory.dart';

import '../../core/di/inventoryProvider.dart';

class InventoryListController
    extends StateNotifier<AsyncValue<List<Inventory>>> {
  InventoryListController(this.ref) : super(AsyncData([]));
  final Ref ref;

  Future<void> getInventory() async {
    final inventoryUseCase = ref.read(inventoryUseCaseProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(inventoryUseCase.getInventoryFromOrders(
            ref.watch(datePickerStateProvider),
            ref.watch(lastDateInventoryStateProvider))
        as Future<List<Inventory>> Function());
    //state = await AsyncValue.guard(inventoryUseCase.getInventoryFromOrders(ref.watch(datePickerStateProvider)));
  }
}
