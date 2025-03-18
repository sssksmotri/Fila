import '../../../domain/entities/delivery_entity.dart';
import '../../models/deliveries_dto.dart';
import '../../models/delivery_dto.dart';

class DeliveryMapper {
  static DeliveryDto toModel(
    DeliveryEntity model,
  ) {
    return DeliveryDto(
      id: model.id,
      name: model.name,
      type: model.type,
    );
  }

  static List<DeliveryDto> toModels(
    List<DeliveryEntity> entities,
  ) {
    List<DeliveryDto> models = [];

    entities.map((p) => models.add(toModel(p))).toList();

    return models;
  }

  static DeliveryEntity toEntity(
    DeliveryDto model,
  ) {
    return DeliveryEntity(
      id: model.id,
      name: model.name,
      type: model.type,
    );
  }

  static List<DeliveryEntity> toEntities(
    DeliveriesDto models,
  ) {
    List<DeliveryEntity> entities = [];

    models.deliveries?.map((p) => entities.add(toEntity(p))).toList();

    return entities;
  }
}
