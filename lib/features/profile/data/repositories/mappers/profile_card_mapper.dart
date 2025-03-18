import '../../../domain/entities/profile_card_entity.dart';
import '../../models/profile_card_dto.dart';

class ProfileCardMapper {
  static ProfileCardDto toModel(
    ProfileCardEntity model,
  ) {
    return ProfileCardDto(
      name: model.name,
    );
  }

  static ProfileCardEntity toEntity(
    ProfileCardDto model,
  ) {
    return ProfileCardEntity(
      name: model.name,
    );
  }
}
