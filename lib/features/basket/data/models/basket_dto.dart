import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

import 'basket_offer_dto.dart';

part 'basket_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
@HiveType(typeId: 3)
class BasketDto {
  BasketDto({
    required this.offers,
  });

  @HiveField(0)
  final List<BasketOfferDto> offers;

  factory BasketDto.fromJson(Map<String, dynamic> json) =>
      _$BasketDtoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$BasketDtoToJson(this);
  }
}
