import 'package:equatable/equatable.dart';

class PaymentMethodEntity extends Equatable {
  final int id;
  final String name;
  final String code;

  const PaymentMethodEntity({
    required this.id,
    required this.name,
    required this.code,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        code,
      ];
}
