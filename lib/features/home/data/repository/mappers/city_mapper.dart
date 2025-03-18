import '../../../domain/entities/city_entity.dart';

import '../../models/city_dto.dart';

class CityMapper {
  static CityDto toModel(
    CityEntity model,
  ) {
    return CityDto(
      id: model.id,
      name: model.name,
      isDefault: model.isDefault,
    );
  }

  static List<CityDto> toModels(
    List<CityEntity> entities,
  ) {
    List<CityDto> models = [];

    entities.map((p) => models.add(toModel(p))).toList();

    return models;
  }

  static CityEntity toEntity(
    CityDto model,
  ) {
    return CityEntity(
      id: model.id,
      name: model.name,
      isDefault: model.isDefault,
    );
  }

  static List<CityEntity> toEntities(
    List<CityDto> models,
  ) {
    List<CityEntity> entities = [];

    models.map((p) => entities.add(toEntity(p))).toList();

    return entities;
  }
}
