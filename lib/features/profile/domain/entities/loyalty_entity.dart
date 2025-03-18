import 'package:equatable/equatable.dart';

class LoyaltyEntity extends Equatable {
  final String title;
  final String discount;
  final String sumFrom;
  final bool active;

  const LoyaltyEntity({
    required this.title,
    required this.discount,
    required this.sumFrom,
    required this.active,
  });

  @override
  List<Object?> get props => [
        title,
        discount,
        sumFrom,
        active,
      ];
}
