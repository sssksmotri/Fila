import '../../../domain/entities/address_entity.dart';
import '../../models/address_dto.dart';

class AddressMapper {
  static AddressDto toModel(
    AddressEntity model,
  ) {
    return AddressDto(
      id: model.id,
      title: model.title,
      zipcode: model.zipcode,
      country: model.country,
      region: model.region,
      city: model.city,
      house: model.house,
      building: model.building,
      entrance: model.entrance,
      floor: model.floor,
      appartment: model.appartment,
      kladrId: model.kladrId,
      uid: model.uid,
      domofon: model.domofon,
      isDefault: model.isDefault,
      street: model.street,
      comment: model.comment,
    );
  }

  static AddressEntity toEntity(
    AddressDto model,
  ) {
    return AddressEntity(
      id: model.id,
      title: model.title,
      zipcode: model.zipcode,
      country: model.country,
      region: model.region,
      city: model.city,
      house: model.house,
      building: model.building,
      entrance: model.entrance,
      floor: model.floor,
      appartment: model.appartment,
      kladrId: model.kladrId,
      uid: model.uid,
      domofon: model.domofon,
      isDefault: model.isDefault,
      street: model.street,
      comment: model.comment,
    );
  }
}
