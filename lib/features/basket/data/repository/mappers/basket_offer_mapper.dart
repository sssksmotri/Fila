import '../../../../home/data/repository/mappers/product_option_mapper.dart';
import '../../../../home/data/repository/mappers/products_mapper.dart';
import '../../../domain/entities/basket_offer_entity.dart';
import '../../models/basket_offer_dto.dart';

abstract class BasketOfferMapper {
  static BasketOfferDto toModel(BasketOfferEntity model) {
    return BasketOfferDto(
      id: model.id,
      product: ProductsMapper.toProductModel(model.product),
      quantity: model.quantity,
      addOptions: ProductOptionMapper.toModels(model.addOptions ?? []),
      removeOptions: ProductOptionMapper.toModels(model.removeOptions ?? []),
    );
  }

  static List<BasketOfferDto> toModels(List<BasketOfferEntity> entities) {
    List<BasketOfferDto> models = [];

    entities.map((p) => models.add(toModel(p))).toList();

    return models;
  }

  static BasketOfferEntity toEntity(BasketOfferDto model) {
    return BasketOfferEntity(
      id: model.id,
      product: ProductsMapper.toProductEntity(model.product),
      quantity: model.quantity,
      addOptions: ProductOptionMapper.toEntities(model.addOptions ?? []),
      removeOptions: ProductOptionMapper.toEntities(model.removeOptions ?? []),
    );
  }

  static List<BasketOfferEntity> toEntities(List<BasketOfferDto> models) {
    List<BasketOfferEntity> entities = [];

    models.map((p) => entities.add(toEntity(p))).toList();

    return entities;
  }
}
