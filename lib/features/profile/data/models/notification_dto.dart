import 'package:json_annotation/json_annotation.dart';

import 'notification_item_dto.dart';

part 'notification_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class NotificationDto {
  NotificationDto({
    required this.title,
    this.items = const [],
  });
  final String title;
  final List<NotificationItemDto> items;

  factory NotificationDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationDtoFromJson(json);
}
