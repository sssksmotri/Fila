import 'package:json_annotation/json_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class UserDto {
  UserDto({
    this.name,
    this.email,
    this.phone,
    this.birthdate,
  });

  final String? name;
  final String? email;
  final String? phone;
  final String? birthdate;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
