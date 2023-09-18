import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/di/inventoryProvider.dart';

class InventoryPage extends ConsumerStatefulWidget {
  const InventoryPage({super.key});

  @override
  ConsumerState<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends ConsumerState<InventoryPage> {
  @override
  Widget build(BuildContext context) {
    final inventoryListControllerValue =
        ref.watch(inventoryListControllerProvider);
    final inventoryList = ref.watch(inventoryListProvider);
    return Scaffold(
        body: SingleChildScrollView(
            child: inventoryList.when(
      data: (inventoryList) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 100,
          child: ListView.builder(
            itemCount: inventoryList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                    "${inventoryList[index].name}   Anzahl:   ${inventoryList[index].quantity}   Price:  ${inventoryList[index].price}€"),
              );
            },
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(
        child: Text(error.toString()),
      ),
    )));
  }
}
