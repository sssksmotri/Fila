import '../../models/basket_offer_dto.dart';

abstract class BasketLocale {
  //init
  Future<void> initBox();

  //!Cart
  Future<void> addBasketItem(BasketOfferDto offer);

  Future<void> removeBasketItem(BasketOfferDto offer);

  List<BasketOfferDto> getAllBasketItems();

  Future<void> removeAllBasketItems();
}
