import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_token_entity.freezed.dart';

@freezed
class AccessTokenEntity with _$AccessTokenEntity {
  const factory AccessTokenEntity({
    required String accessToken,
    required String tokenType,
    required int expiresIn,
  }) = _AccessTokenEntity;
}
