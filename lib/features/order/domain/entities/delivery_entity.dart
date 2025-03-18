import 'package:equatable/equatable.dart';

class DeliveryEntity extends Equatable {
  final int id;
  final String name;
  final String? type;

  const DeliveryEntity({
    required this.id,
    required this.name,
    this.type,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        type,
      ];
}
