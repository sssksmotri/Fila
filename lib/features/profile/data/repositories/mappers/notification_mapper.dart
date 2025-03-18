import '../../../domain/entities/notification_entity.dart';
import '../../models/notification_dto.dart';
import 'notification_item_mapper.dart';

class NotificationMapper {
  static NotificationDto toModel(
    NotificationEntity model,
  ) {
    return NotificationDto(
      title: model.title,
      items: NotificationItemMapper.toModels(model.items),
    );
  }

  static List<NotificationDto> toModels(
    List<NotificationEntity> entities,
  ) {
    List<NotificationDto> models = [];

    entities.map((p) => models.add(toModel(p))).toList();

    return models;
  }

  static NotificationEntity toEntity(
    NotificationDto model,
  ) {
    return NotificationEntity(
      title: model.title,
      items: NotificationItemMapper.toEntities(model.items),
    );
  }

  static List<NotificationEntity> toEntities(
    List<NotificationDto> models,
  ) {
    List<NotificationEntity> entities = [];

    models.map((p) => entities.add(toEntity(p))).toList();

    return entities;
  }
}
