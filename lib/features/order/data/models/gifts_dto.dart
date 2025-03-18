import 'package:json_annotation/json_annotation.dart';

import '../../../home/data/models/product_dto.dart';

part 'gifts_dto.g.dart';

@JsonSerializable(
  createToJson: false,
)
class GiftsDto {
  GiftsDto({
    required this.gifts,
  });

  @JsonKey(name: 'data')
  final List<ProductDto> gifts;

  factory GiftsDto.fromJson(Map<String, dynamic> json) =>
      _$GiftsDtoFromJson(json);
}
