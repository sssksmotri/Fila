import 'package:equatable/equatable.dart';

import 'notification_item_entity.dart';

class NotificationEntity extends Equatable {
  final String title;
  final List<NotificationItemEntity> items;

  const NotificationEntity({
    required this.title,
    this.items = const [],
  });

  @override
  List<Object?> get props => [
        title,
      ];
}
