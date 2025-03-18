import '../../../../../core/extensions/color.dart';
import '../../../domain/entities/tag_entity.dart';

import '../../models/tag_dto.dart';

class TagsMapper {
  static TagDto toModel(
    TagEntity model,
  ) {
    return TagDto(
      id: model.id,
      title: model.title,
      color: '#${model.color.value.toRadixString(16)}',
      secondColor: model.secondColor,
      icon: model.icon,
    );
  }

  static List<TagDto> toModels(
    List<TagEntity> entities,
  ) {
    List<TagDto> models = [];

    entities.map((p) => models.add(toModel(p))).toList();

    return models;
  }

  static TagEntity toEntity(
    TagDto model,
  ) {
    return TagEntity(
      id: model.id,
      title: model.title,
      color: HexColor(model.color),
      secondColor: model.secondColor,
      icon: model.icon,
    );
  }

  static List<TagEntity> toEntities(
    List<TagDto> models,
  ) {
    List<TagEntity> entities = [];

    models.map((p) => entities.add(toEntity(p))).toList();

    return entities;
  }
}
