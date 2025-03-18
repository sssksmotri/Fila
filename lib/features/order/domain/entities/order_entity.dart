import 'package:decimal/decimal.dart';
import 'package:equatable/equatable.dart';

import 'order_product_entity.dart';

class OrderEntity extends Equatable {
  const OrderEntity({
    required this.id,
    this.number,
    required this.status,
    required this.totalPrice,
    required this.createdAt,
    required this.needReview,
    required this.products,
  });

  final int id;
  final String? number;
  final String status;
  final Decimal totalPrice;
  final DateTime createdAt;
  final bool needReview;
  final List<OrderProductEntity> products;

  @override
  List<Object?> get props => [
        id,
        number,
        status,
        totalPrice,
        createdAt,
        needReview,
        products,
      ];
}
