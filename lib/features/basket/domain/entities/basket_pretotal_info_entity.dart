import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_pretotal_info_entity.freezed.dart';

@freezed
class BasketPretotalnfoEntity with _$BasketPretotalnfoEntity {
  const factory BasketPretotalnfoEntity({
    required String title,
    required String value,
  }) = _BasketPretotalnfoEntity;
}
