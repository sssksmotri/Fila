import 'package:json_annotation/json_annotation.dart';

part 'add_child_request_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class AddChildRequestDto {
  AddChildRequestDto({
    required this.name,
    required this.birthdate,
  });

  final String name;
  final String birthdate;

  factory AddChildRequestDto.fromJson(Map<String, dynamic> json) =>
      _$AddChildRequestDtoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$AddChildRequestDtoToJson(this);
  }
}
