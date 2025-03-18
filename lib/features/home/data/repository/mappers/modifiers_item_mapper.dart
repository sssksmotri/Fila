import 'package:decimal/decimal.dart';

import '../../../domain/entities/modifier_item_entity.dart';
import '../../models/modifier_item_dto.dart';

class ModifiersItemMapper {
  static ModifierItemDto toModel(
    ModifierItemEntity model,
  ) {
    return ModifierItemDto(
      id: model.id,
      title: model.title,
      price: int.parse(model.price.toString()),
      minQuantity: model.minQuantity,
      maxQuantity: model.maxQuantity,
      weight: model.weight,
    );
  }

  static List<ModifierItemDto> toModels(
    List<ModifierItemEntity> entities,
  ) {
    List<ModifierItemDto> models = [];

    entities.map((p) => models.add(toModel(p))).toList();

    return models;
  }

  static ModifierItemEntity toEntity(
    ModifierItemDto model,
  ) {
    return ModifierItemEntity(
      id: model.id,
      title: model.title,
      price: model.price != null ? Decimal.fromInt(model.price!) : null,
      minQuantity: model.minQuantity,
      maxQuantity: model.maxQuantity,
      image: model.picture,
      weight: model.weight,
    );
  }

  static List<ModifierItemEntity> toEntities(
    List<ModifierItemDto> models,
  ) {
    List<ModifierItemEntity> entities = [];

    models.map((p) => entities.add(toEntity(p))).toList();

    return entities;
  }
}
