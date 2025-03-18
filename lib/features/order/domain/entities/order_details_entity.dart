import 'package:decimal/decimal.dart';
import 'package:equatable/equatable.dart';

import 'delivery_entity.dart';
import 'order_details_address_entity.dart';
import 'order_details_status_entity.dart';
import 'order_product_entity.dart';
import 'payment_method_entity.dart';

class OrderDetailsEntity extends Equatable {
  const OrderDetailsEntity({
    required this.id,
    this.number,
    required this.status,
    required this.totalPrice,
    required this.createdAt,
    this.comment,
    required this.delivery,
    required this.payment,
    required this.products,
    required this.paymentStatus,
    required this.needReview,
    this.address,
    this.statuses = const [],
  });

  final int id;
  final String? number;
  final String status;
  final Decimal totalPrice;
  final DateTime createdAt;
  final String? comment;
  final DeliveryEntity delivery;
  final PaymentMethodEntity payment;
  final List<OrderProductEntity> products;
  final bool paymentStatus;
  final bool needReview;
  final OrderDetailsAddressEntity? address;
  final List<OrderDetailsStatusEntity> statuses;

  @override
  List<Object?> get props => [
        id,
        number,
        status,
        totalPrice,
        createdAt,
        comment,
        delivery,
        payment,
        products,
        paymentStatus,
        address,
      ];
}
