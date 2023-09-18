import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repository/OrderRepository.dart';
import '../../domain/models/order.dart';

final orderRepositoryProvider = Provider((ref) => OrderRepository(ref));

/* final ordersProvider = FutureProvider.autoDispose<List<Order>>((ref) async {
  final data = await ref.watch(orderRepositoryProvider).getOrders();
  return data;
}); */
