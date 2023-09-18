import 'package:freezed_annotation/freezed_annotation.dart';
// import any other models we depend on
import 'product.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  factory Order({
    required int id,
    required String status,
    required String total,
    // note: using a JsonKey to map our JSON key that uses
    // *snake_case* to our Dart variable that uses *camelCase*
    @JsonKey(name: 'line_items') required List<Product> products,
    // note: using an empty list as a default value
    //@Default([]) List<Review> reviews,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
