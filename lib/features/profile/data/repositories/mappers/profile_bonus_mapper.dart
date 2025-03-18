import '../../../domain/entities/profile_bonus_entity.dart';
import '../../models/profile_bonus_dto.dart';

class ProfileBonusMapper {
  static ProfileBonusDto toModel(
    ProfileBonusEntity model,
  ) {
    return ProfileBonusDto(
      count: model.count,
      available: model.available,
      sumStill: model.sumStill,
      currentStatus: model.currentStatus,
      nextStatus: model.nextStatus,
      numberCard: model.numberCard,
    );
  }

  static ProfileBonusEntity toEntity(
    ProfileBonusDto model,
  ) {
    return ProfileBonusEntity(
      count: model.count,
      available: model.available,
      sumStill: model.sumStill,
      currentStatus: model.currentStatus,
      nextStatus: model.nextStatus,
      numberCard: model.numberCard,
    );
  }
}
