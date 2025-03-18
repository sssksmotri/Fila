import '../../../domain/entities/address_create_entity.dart';
import '../../models/address_create_request_dto.dart';

class AddressCreateMapper {
  static AddressCreateRequestDto toModel(
    AddressCreateEntity model,
  ) {
    return AddressCreateRequestDto(
      street: model.street,
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
      comment: model.comment,
    );
  }

  static AddressCreateEntity toEntity(
    AddressCreateRequestDto model,
  ) {
    return AddressCreateEntity(
      street: model.street,
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
      comment: model.comment,
    );
  }
}
