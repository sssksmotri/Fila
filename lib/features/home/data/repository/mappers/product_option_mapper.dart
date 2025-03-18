import 'package:decimal/decimal.dart';

import '../../../domain/entities/option_entity.dart';
import '../../models/product_option_dto.dart';

class ProductOptionMapper {
  static ProductOptionDto toModel(
    ProductOptionEntity model,
  ) {
    return ProductOptionDto(
      id: model.id ?? 0,
      name: model.name,
      picture: model.image,
      price: int.parse(model.price.toString()),
      description: model.description,
      unit: model.unit,
    );
  }

  static List<ProductOptionDto> toModels(
    List<ProductOptionEntity> entities,
  ) {
    List<ProductOptionDto> models = [];

    entities.map((p) => models.add(toModel(p))).toList();

    return models;
  }

  static ProductOptionEntity toEntity(
    ProductOptionDto model,
  ) {
    return ProductOptionEntity(
      id: model.id,
      name: model.name,
      image: model.picture,
      price: Decimal.fromInt(model.price ?? 0),
      description: model.description,
      unit: model.unit,
    );
  }

  static List<ProductOptionEntity> toEntities(
    List<ProductOptionDto> models,
  ) {
    List<ProductOptionEntity> entities = [];

    models.map((p) => entities.add(toEntity(p))).toList();

    return entities;
  }
}
