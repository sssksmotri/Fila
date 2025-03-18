import 'package:freezed_annotation/freezed_annotation.dart';

import 'basket_modifire_entity.dart';

part 'basket_info_request_entity.freezed.dart';

@freezed
class BasketInfoRequestEntity with _$BasketInfoRequestEntity {
  const factory BasketInfoRequestEntity({
    required int id,
    required int qnt,
    @Default([]) List<BasketModifireEntity> modifiers,
  }) = _BasketInfoRequestEntity;
}
