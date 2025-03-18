import 'package:json_annotation/json_annotation.dart';

part 'edit_user_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class EditUserDto {
  EditUserDto({
    this.name,
    this.email,
    this.birthdate,
  });

  final String? name;
  final String? email;
  final String? birthdate;

  factory EditUserDto.fromJson(Map<String, dynamic> json) =>
      _$EditUserDtoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$EditUserDtoToJson(this);
  }
}
