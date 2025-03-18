import 'package:json_annotation/json_annotation.dart';

part 'notification_status_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class NotificationStatusDto {
  NotificationStatusDto({
    required this.status,
  });

  final bool status;

  factory NotificationStatusDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationStatusDtoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$NotificationStatusDtoToJson(this);
  }
}
