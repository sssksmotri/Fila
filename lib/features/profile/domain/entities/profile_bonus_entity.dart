import 'package:equatable/equatable.dart';

class ProfileBonusEntity extends Equatable {
  final double count;
  final bool available;
  final String? sumStill;
  final String? currentStatus;
  final String? nextStatus;
  final String? numberCard;

  const ProfileBonusEntity({
    this.count = 0.0,
    this.available = false,
    this.sumStill,
    this.currentStatus,
    this.nextStatus,
    this.numberCard,
  });

  @override
  List<Object?> get props => [
        count,
        available,
        sumStill,
        currentStatus,
        nextStatus,
        numberCard,
      ];
}
