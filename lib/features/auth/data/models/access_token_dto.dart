import 'package:json_annotation/json_annotation.dart';

part 'access_token_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class AccessTokenDto {
  AccessTokenDto({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
  });
  final String accessToken;
  final String tokenType;
  final int expiresIn;

  factory AccessTokenDto.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenDtoFromJson(json);
}
