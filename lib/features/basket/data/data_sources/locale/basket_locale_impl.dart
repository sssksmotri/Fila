import 'package:hive/hive.dart';

import '../../models/basket_offer_dto.dart';
import 'basket_locale.dart';

class BasketLocaleImpl implements BasketLocale {
  late Box<BasketOfferDto> _basketBox;

  @override
  Future<void> initBox() async {
    _basketBox = await Hive.openBox<BasketOfferDto>('basket');
  }

  @override
  Future<void> addBasketItem(BasketOfferDto offer) async {
    await _basketBox.put(offer.id, offer);
  }

  @override
  List<BasketOfferDto> getAllBasketItems() {
    return _basketBox.values.toList();
  }

  @override
  Future<void> removeAllBasketItems() async {
    await _basketBox.clear();
  }

  @override
  Future<void> removeBasketItem(BasketOfferDto offer) async {
    await _basketBox.delete(offer.id);
  }
}
