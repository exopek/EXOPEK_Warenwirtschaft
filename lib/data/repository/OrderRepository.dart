import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/di/dioProvider.dart';
import '../../domain/models/order.dart';
import '../contracts/IOrderRepository.dart';

class OrderRepository implements IOrderRepository {
  OrderRepository(this.ref);

  final Ref ref;

  @override
  Future<List<Order>> getOrders(DateTime after) async {
    Dio _dio = ref.watch(dioProvider);
    //_dio.options.baseUrl = _baseUrl;
    // Datetime format: 2021-03-01T00:00:00
    String formattedDate = after.toIso8601String();
    Response res = await _dio
        .get("wp-json/wc/v3/orders?status=completed&after=$formattedDate");
    if (res.statusCode == 200) {
      List<Order> orders =
          res.data.map<Order>((json) => Order.fromJson(json)).toList();
      print(orders.length);
      return orders;
    }
    return [];
  }
}
