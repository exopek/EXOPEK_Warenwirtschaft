import 'package:freezed_annotation/freezed_annotation.dart';
// import any other models we depend on
//import 'review.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required int id,
    required String name,
    required int quantity,
    required double price,
    required String sku,

    // note: using a JsonKey to map our JSON key that uses
    // *snake_case* to our Dart variable that uses *camelCase*
    @JsonKey(name: 'product_id') int? productId,
    // note: using an empty list as a default value
    //@Default([]) List<Review> reviews,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
