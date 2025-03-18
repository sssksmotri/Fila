import 'package:json_annotation/json_annotation.dart';

part 'delivery_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class DeliveryDto {
  DeliveryDto({
    required this.id,
    required this.name,
    this.type,
  });
  final int id;
  @JsonKey(name: 'title')
  final String name;
  final String? type;

  factory DeliveryDto.fromJson(Map<String, dynamic> json) =>
      _$DeliveryDtoFromJson(json);
}
