import 'package:json_annotation/json_annotation.dart';

part 'notification_item_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class NotificationItemDto {
  NotificationItemDto({
    required this.id,
    required this.title,
    this.status = false,
  });

  final int id;
  final String title;
  final bool status;

  factory NotificationItemDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationItemDtoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$NotificationItemDtoToJson(this);
  }
}
