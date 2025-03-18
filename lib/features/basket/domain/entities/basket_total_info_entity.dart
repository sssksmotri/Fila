import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_total_info_entity.freezed.dart';

@freezed
class BasketTotalInfoEntity with _$BasketTotalInfoEntity {
  const factory BasketTotalInfoEntity({
    required int total,
    required int discountPrice,
  }) = _BasketTotalInfoEntity;
}
