import 'package:json_annotation/json_annotation.dart';

part 'child_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class ChildDto {
  ChildDto({
    required this.id,
    required this.name,
    required this.birthdate,
  });

  final int id;
  final String name;
  final String birthdate;

  factory ChildDto.fromJson(Map<String, dynamic> json) =>
      _$ChildDtoFromJson(json);
}
