import 'package:json_annotation/json_annotation.dart';

part 'profile_child_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class ProfileChildDto {
  ProfileChildDto({
    this.id,
    this.name,
    this.birthdate,
  });

  final int? id;
  final String? name;
  final String? birthdate;

  factory ProfileChildDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileChildDtoFromJson(json);
}
