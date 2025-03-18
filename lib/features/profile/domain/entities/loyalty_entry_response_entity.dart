import 'package:equatable/equatable.dart';

class LoyaltyEntryResponseEntity extends Equatable {
  final String status;
  final String message;

  const LoyaltyEntryResponseEntity({
    required this.status,
    required this.message,
  });

  @override
  List<Object?> get props => [
        status,
        message,
      ];
}
