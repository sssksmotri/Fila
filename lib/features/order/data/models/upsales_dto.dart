import 'package:json_annotation/json_annotation.dart';

import '../../../home/data/models/product_dto.dart';

part 'upsales_dto.g.dart';

@JsonSerializable(
  createToJson: false,
)
class UpsalesDto {
  UpsalesDto({
    required this.title,
    required this.products,
  });

  final String title;
  final List<ProductDto> products;

  factory UpsalesDto.fromJson(Map<String, dynamic> json) =>
      _$UpsalesDtoFromJson(json);
}
