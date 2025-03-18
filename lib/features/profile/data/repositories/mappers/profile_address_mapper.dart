import '../../../domain/entities/profile_address_entity.dart';
import '../../models/profile_address_dto.dart';

class ProfileAddressMapper {
  static ProfileAddressDto toModel(
    ProfileAddressEntity model,
  ) {
    return ProfileAddressDto(
      id: model.id,
      title: model.title,
      latitude: model.latitude.toString(),
      longitude: model.longitude.toString(),
      street: model.street,
      house: model.house,
      building: model.building,
      entrance: model.entrance,
      floor: model.floor,
      appartment: model.appartment,
      domofon: model.domofon,
      isPrivate: model.isPrivate,
      isDefault: model.isDefault,
    );
  }

  static ProfileAddressEntity toEntity(
    ProfileAddressDto model,
  ) {
    return ProfileAddressEntity(
      id: model.id,
      title: model.title,
      latitude: model.latitude?.isNotEmpty == true
          ? double.parse(model.latitude!)
          : null,
      longitude: model.longitude?.isNotEmpty == true
          ? double.parse(model.longitude!)
          : null,
      street: model.street,
      house: model.house,
      building: model.building,
      entrance: model.entrance,
      floor: model.floor,
      appartment: model.appartment,
      domofon: model.domofon,
      isPrivate: model.isPrivate,
      isDefault: model.isDefault,
    );
  }
}
