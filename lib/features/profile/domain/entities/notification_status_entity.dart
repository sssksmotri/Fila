import 'package:equatable/equatable.dart';

class NotificationStatusEntity extends Equatable {
  final bool status;
  final int id;

  const NotificationStatusEntity({
    required this.id,
    required this.status,
  });

  @override
  List<Object?> get props => [
        id,
        status,
      ];
}
