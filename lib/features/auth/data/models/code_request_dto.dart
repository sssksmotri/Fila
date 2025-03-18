import 'package:json_annotation/json_annotation.dart';

part 'code_request_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
)
class CodeRequestDto {
  CodeRequestDto({
    required this.phoneNumber,
    this.code,
    this.deviceId,
  });
  final String phoneNumber;
  final String? code;
  final String? deviceId;

  factory CodeRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CodeRequestDtoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$CodeRequestDtoToJson(this);
  }
}
