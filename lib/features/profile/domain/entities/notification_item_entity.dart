import 'package:equatable/equatable.dart';

class NotificationItemEntity extends Equatable {
  final int id;
  final String title;
  final bool status;

  const NotificationItemEntity({
    required this.id,
    required this.title,
    this.status = false,
  });

  @override
  List<Object?> get props => [
        id,
        status,
      ];
}
