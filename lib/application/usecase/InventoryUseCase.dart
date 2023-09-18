import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inventory_app/application/contracts/IInventoryUseCase.dart';

import '../../core/di/orderProvider.dart';
import '../../domain/models/Inventory.dart';
import '../../domain/models/order.dart';

class InventoryUseCase implements IInventoryUseCase {
  InventoryUseCase(this.ref);

  final Ref ref;

  @override
  Future<List<Inventory>> getInventoryFromOrders(DateTime after) async {
    List<Inventory> inventories = [];
    List<Order> orders =
        await ref.watch(orderRepositoryProvider).getOrders(after);
    if (orders.isNotEmpty) {
      orders.forEach((element) {
        element.products.forEach((product) {
          print(product.name);
          if (product.sku == '030618PI') {
            for (var i = 0; i < product.quantity; i++) {
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Arme) 0,5',
                  quantity: 1,
                  internalSku: 'EXOBAAR05',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Arme) 1',
                  quantity: 1,
                  internalSku: 'EXOBAAR1',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Arme) 2',
                  quantity: 1,
                  internalSku: 'EXOBAAR2',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Beine) 1',
                  quantity: 1,
                  internalSku: 'EXOBABE1',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Beine) 3',
                  quantity: 1,
                  internalSku: 'EXOBABE3',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'Griffe',
                  quantity: 1,
                  internalSku: 'EXOGR',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'Manschetten Arme',
                  quantity: 1,
                  internalSku: '030618MAA',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'Manschetten Beine',
                  quantity: 1,
                  internalSku: '030618MAB',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'Turnbeutel',
                  quantity: 1,
                  internalSku: 'EXOBTL',
                  price: 1.24));
            }
          }
          if (product.sku == '030618PII') {
            for (var i = 0; i < product.quantity; i++) {
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Arme) 1',
                  quantity: 1,
                  internalSku: 'EXOBAAR1',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Arme) 3',
                  quantity: 1,
                  internalSku: 'EXOBAAR3',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Arme) 5',
                  quantity: 1,
                  internalSku: 'EXOBAAR5',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Beine) 1',
                  quantity: 1,
                  internalSku: 'EXOBABE1',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Beine) 3',
                  quantity: 1,
                  internalSku: 'EXOBABE3',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'Griffe',
                  quantity: 1,
                  internalSku: 'EXOGR',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'Manschetten Arme',
                  quantity: 1,
                  internalSku: '030618MAA',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'Manschetten Beine',
                  quantity: 1,
                  internalSku: '030618MAB',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'Turnbeutel',
                  quantity: 1,
                  internalSku: 'EXOBTL',
                  price: 1.24));
            }
          }
          if (product.sku == '030618SI') {
            for (var i = 0; i < product.quantity; i++) {
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Arme) 1',
                  quantity: 1,
                  internalSku: 'EXOBAAR1',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Beine) 1',
                  quantity: 1,
                  internalSku: 'EXOBABE1',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'Manschetten Arme',
                  quantity: 1,
                  internalSku: '030618MAA',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'Manschetten Beine',
                  quantity: 1,
                  internalSku: '030618MAB',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'Turnbeutel',
                  quantity: 1,
                  internalSku: 'EXOBTL',
                  price: 1.24));
            }
          }
          if (product.sku == '030618SII') {
            for (var i = 0; i < product.quantity; i++) {
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Arme) 3',
                  quantity: 1,
                  internalSku: 'EXOBAAR3',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Beine) 3',
                  quantity: 1,
                  internalSku: 'EXOBABE3',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'Manschetten Arme',
                  quantity: 1,
                  internalSku: '030618MAA',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'Manschetten Beine',
                  quantity: 1,
                  internalSku: '030618MAB',
                  price: 1.24));
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'Turnbeutel',
                  quantity: 1,
                  internalSku: 'EXOBTL',
                  price: 1.24));
            }
          }
          if (product.sku == 'EXOBABE05') {
            for (var i = 0; i < product.quantity; i++) {
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Beine) 0,5',
                  quantity: 1,
                  internalSku: 'EXOBABE05',
                  price: 1.24));
            }
          }
          if (product.sku == 'EXOBABE1') {
            for (var i = 0; i < product.quantity; i++) {
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Beine) 1',
                  quantity: 1,
                  internalSku: 'EXOBABE1',
                  price: 1.24));
            }
          }
          if (product.sku == 'EXOBABE2') {
            for (var i = 0; i < product.quantity; i++) {
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Beine) 2',
                  quantity: 1,
                  internalSku: 'EXOBABE2',
                  price: 1.24));
            }
          }
          if (product.sku == 'EXOBABE3') {
            for (var i = 0; i < product.quantity; i++) {
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Beine) 3',
                  quantity: 1,
                  internalSku: 'EXOBABE3',
                  price: 1.24));
            }
          }
          if (product.sku == 'EXOBABE4') {
            for (var i = 0; i < product.quantity; i++) {
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Beine) 4',
                  quantity: 1,
                  internalSku: 'EXOBABE4',
                  price: 1.24));
            }
          }
          if (product.sku == 'EXOBABE5') {
            for (var i = 0; i < product.quantity; i++) {
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Beine) 5',
                  quantity: 1,
                  internalSku: 'EXOBABE5',
                  price: 1.24));
            }
          }
          if (product.sku == 'EXOBAAR05') {
            for (var i = 0; i < product.quantity; i++) {
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Arme) 0,5',
                  quantity: 1,
                  internalSku: 'EXOBAAR05',
                  price: 1.24));
            }
          }
          if (product.sku == 'EXOBAAR1') {
            for (var i = 0; i < product.quantity; i++) {
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Arme) 1',
                  quantity: 1,
                  internalSku: 'EXOBAAR1',
                  price: 1.24));
            }
          }
          if (product.sku == 'EXOBAAR2') {
            for (var i = 0; i < product.quantity; i++) {
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Arme) 2',
                  quantity: 1,
                  internalSku: 'EXOBAAR2',
                  price: 1.24));
            }
          }
          if (product.sku == 'EXOBAAR3') {
            for (var i = 0; i < product.quantity; i++) {
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Arme) 3',
                  quantity: 1,
                  internalSku: 'EXOBAAR3',
                  price: 1.24));
            }
          }
          if (product.sku == 'EXOBAAR4') {
            for (var i = 0; i < product.quantity; i++) {
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Arme) 4',
                  quantity: 1,
                  internalSku: 'EXOBAAR4',
                  price: 1.24));
            }
          }
          if (product.sku == 'EXOBAAR5') {
            for (var i = 0; i < product.quantity; i++) {
              inventories.add(Inventory(
                  id: product.id,
                  type: 'product',
                  name: 'EXOBANDS (Arme) 5',
                  quantity: 1,
                  internalSku: 'EXOBAAR5',
                  price: 1.24));
            }
          }
          /* if (product.sku == '030618MA') {

          } */
          /* if (product.sku == 'EXOCAP') {

          }
          if (product.sku == 'EXOBTL') {

          }
          if (product.sku == 'EXOBAG') {

          }
          if (product.sku == 'EXOGR') {

          } */
        });
      });
    }
    List<Inventory> sortedInventories = [];
    // sort by internalSku and set quantity
    inventories.sort((a, b) => a.internalSku.compareTo(b.internalSku));
    inventories.forEach((element) {
      if (sortedInventories.length == 0) {
        sortedInventories.add(element);
      } else {
        if (element.internalSku == sortedInventories.last.internalSku) {
          var inventory = sortedInventories.last.copyWith(
              quantity: sortedInventories.last.quantity + 1,
              price: sortedInventories.last.price + element.price);
          sortedInventories.removeLast();
          sortedInventories.add(inventory);
        } else {
          sortedInventories.add(element);
        }
      }
    });

    return sortedInventories;
  }
}