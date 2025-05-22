import '../../../domain/entities/modifier_entity.dart';
import '../../models/modifier_dto.dart';
import 'modifiers_item_mapper.dart';

class ModifiersMapper {
  static ModifierDto toModel(
    ModifierEntity model,
  ) {
    return ModifierDto(
      id: model.id,
      title: model.title,
      items: ModifiersItemMapper.toModels(model.items),
      type: model.type,
      minQuantity: model.minQuantity,
      maxQuantity: model.maxQuantity,
      weight: model.weight != null ? int.tryParse(model.weight!) : null,
    );
  }

  static List<ModifierDto> toModels(
    List<ModifierEntity> entities,
  ) {
    List<ModifierDto> models = [];

    entities.map((p) => models.add(toModel(p))).toList();

    return models;
  }

  static ModifierEntity toEntity(
    ModifierDto model,
  ) {
    return ModifierEntity(
      id: model.id,
      title: model.title,
      items: ModifiersItemMapper.toEntities(model.items),
      type: model.type,
      minQuantity: model.minQuantity,
      maxQuantity: model.maxQuantity,
      weight: model.weight.toString(),
      isHalfPizza: model.isHalfPizza,
    );
  }

  static List<ModifierEntity> toEntities(
    List<ModifierDto> models,
  ) {
    List<ModifierEntity> entities = [];

    models.map((p) => entities.add(toEntity(p))).toList();

    return entities;
  }
}
