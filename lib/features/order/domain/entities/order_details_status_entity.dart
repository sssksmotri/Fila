import 'package:equatable/equatable.dart';

class OrderDetailsStatusEntity extends Equatable {
  const OrderDetailsStatusEntity({
    required this.id,
    required this.date,
    this.title,
    this.subtitle,
    this.active = false,
  });

  final int id;
  final String? title;
  final String? subtitle;
  final bool active;
  final String date;

  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        active,
      ];
}
