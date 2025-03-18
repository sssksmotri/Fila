import 'package:json_annotation/json_annotation.dart';

part 'upsale_request_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class UpsaleRequestDto {
  UpsaleRequestDto({
    required this.types,
  });

  final List<String> types;

  factory UpsaleRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UpsaleRequestDtoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$UpsaleRequestDtoToJson(this);
  }
}
