import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

import '../../../home/data/models/product_dto.dart';
import '../../../home/data/models/product_option_dto.dart';

part 'basket_offer_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
@HiveType(typeId: 2)
class BasketOfferDto {
  BasketOfferDto({
    required this.id,
    required this.product,
    this.quantity,
    this.addOptions,
    this.removeOptions,
  });

  @HiveField(0)
  final String id;

  @HiveField(1)
  final ProductDto product;

  @HiveField(2)
  final int? quantity;

  @HiveField(3)
  final List<ProductOptionDto>? addOptions;

  @HiveField(4)
  final List<ProductOptionDto>? removeOptions;

  factory BasketOfferDto.fromJson(Map<String, dynamic> json) =>
      _$BasketOfferDtoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$BasketOfferDtoToJson(this);
  }
}
