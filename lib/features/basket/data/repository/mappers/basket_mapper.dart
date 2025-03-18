import '../../../domain/entities/basket_entity.dart';
import '../../models/basket_dto.dart';
import 'basket_offer_mapper.dart';

abstract class BasketMapper {
  static BasketDto toModel(BasketEntity model) {
    return BasketDto(
      offers: BasketOfferMapper.toModels(model.offers),
    );
  }

  static BasketEntity toEntity(BasketDto model) {
    return BasketEntity(
      offers: BasketOfferMapper.toEntities(model.offers),
    );
  }
}
