import 'package:equatable/equatable.dart';

class LoyaltyEntryRequestEntity extends Equatable {
  final String name;
  final String email;
  final String birthdate;

  const LoyaltyEntryRequestEntity({
    required this.name,
    required this.email,
    required this.birthdate,
  });

  @override
  List<Object?> get props => [
        name,
        email,
        birthdate,
      ];
}
