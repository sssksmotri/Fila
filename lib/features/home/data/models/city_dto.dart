import 'package:json_annotation/json_annotation.dart';

part 'city_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class CityDto {
  CityDto({
    required this.id,
    required this.name,
    this.isDefault = false,
  });
  final int id;
  @JsonKey(name: 'title')
  final String name;
  @JsonKey(name: 'default')
  final bool isDefault;

  factory CityDto.fromJson(Map<String, dynamic> json) =>
      _$CityDtoFromJson(json);
}
