import '../../../domain/entities/access_token_entity.dart';
import '../../models/access_token_dto.dart';

abstract class AccessTokenMapper {
  static AccessTokenDto toModel(AccessTokenEntity model) {
    return AccessTokenDto(
      accessToken: model.accessToken,
      tokenType: model.tokenType,
      expiresIn: model.expiresIn,
    );
  }

  static AccessTokenEntity toEntity(AccessTokenDto model) {
    return AccessTokenEntity(
      accessToken: model.accessToken,
      tokenType: model.tokenType,
      expiresIn: model.expiresIn,
    );
  }
}
