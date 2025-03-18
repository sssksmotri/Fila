import 'package:json_annotation/json_annotation.dart';

import 'basket_info_request_dto.dart';

part 'basket_info_request_basket_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class BasketInfoRequestBasketDto {
  BasketInfoRequestBasketDto({
    required this.basket,
    required this.deliveryId,
  });

  final List<BasketInfoRequestDto> basket;
  final int deliveryId;

  factory BasketInfoRequestBasketDto.fromJson(Map<String, dynamic> json) => _$BasketInfoRequestBasketDtoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$BasketInfoRequestBasketDtoToJson(this);
  }
}
