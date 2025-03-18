import 'package:equatable/equatable.dart';

class OrderedPositionEntity extends Equatable {
  final int productId;
  final int quantity;

  const OrderedPositionEntity({
    required this.productId,
    required this.quantity,
  });

  @override
  List<Object?> get props => [
        productId,
        quantity,
      ];
}
