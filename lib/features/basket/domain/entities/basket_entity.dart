import 'package:equatable/equatable.dart';

import '../../../home/domain/entities/product_entity.dart';
import 'basket_offer_entity.dart';

class BasketEntity extends Equatable {
  const BasketEntity({
    required this.offers,
    this.gifts = const [],
    this.moneyChange,
    this.promocode,
  });

  final List<BasketOfferEntity> offers;
  final List<ProductEntity> gifts;
  final String? moneyChange;
  final String? promocode;

  @override
  List<Object?> get props => [
        offers,
        gifts,
        moneyChange,
        promocode,
      ];

  BasketEntity copyWith({
    List<BasketOfferEntity>? offers,
    List<ProductEntity>? gifts,
    String? moneyChange,
    String? promocode,
  }) {
    return BasketEntity(
      offers: offers ?? this.offers,
      gifts: gifts ?? this.gifts,
      promocode: promocode ?? this.promocode,
      moneyChange: moneyChange ?? this.moneyChange,
    );
  }
}
