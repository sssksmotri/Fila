import '../../../domain/entities/notification_item_entity.dart';
import '../../models/notification_item_dto.dart';

class NotificationItemMapper {
  static NotificationItemDto toModel(
    NotificationItemEntity model,
  ) {
    return NotificationItemDto(
      id: model.id,
      title: model.title,
      status: model.status,
    );
  }

  static List<NotificationItemDto> toModels(
    List<NotificationItemEntity> entities,
  ) {
    List<NotificationItemDto> models = [];

    entities.map((p) => models.add(toModel(p))).toList();

    return models;
  }

  static NotificationItemEntity toEntity(
    NotificationItemDto model,
  ) {
    return NotificationItemEntity(
      id: model.id,
      title: model.title,
      status: model.status,
    );
  }

  static List<NotificationItemEntity> toEntities(
    List<NotificationItemDto> models,
  ) {
    List<NotificationItemEntity> entities = [];

    models.map((p) => entities.add(toEntity(p))).toList();

    return entities;
  }
}
