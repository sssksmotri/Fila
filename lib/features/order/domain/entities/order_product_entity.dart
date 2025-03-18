import 'package:decimal/decimal.dart';
import 'package:equatable/equatable.dart';

class OrderProductEntity extends Equatable {
  const OrderProductEntity({
    required this.id,
    required this.qnt,
    required this.title,
    this.image,
    required this.price,
    required this.total,
    required this.isHalfPizza,
    required this.isCombo,
  });

  final int id;
  final int qnt;
  final String title;
  final String? image;
  final Decimal price;
  final Decimal total;
  final bool isCombo;
  final bool isHalfPizza;

  @override
  List<Object?> get props => [
        id,
        qnt,
        title,
        image,
        price,
        total,
        isCombo,
        isHalfPizza,
      ];
}
