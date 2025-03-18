import 'package:json_annotation/json_annotation.dart';

part 'tag_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class TagDto {
  TagDto({
    required this.id,
    required this.title,
    required this.color,
    this.secondColor,
    this.icon,
  });

  final int id;
  final String title;
  final String color;
  final String? secondColor;
  final String? icon;

  factory TagDto.fromJson(Map<String, dynamic> json) => _$TagDtoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$TagDtoToJson(this);
  }
}
