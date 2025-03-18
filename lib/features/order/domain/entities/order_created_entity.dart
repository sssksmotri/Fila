import 'package:equatable/equatable.dart';

class OrderCreatedEntity extends Equatable {
  final int id;
  final String status;
  final String? paymentUrl;

  const OrderCreatedEntity({
    required this.id,
    required this.status,
    this.paymentUrl,
  });

  @override
  List<Object?> get props => [
        id,
        status,
        paymentUrl,
      ];
}
