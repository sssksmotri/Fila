import 'package:json_annotation/json_annotation.dart';

import 'filter_dto.dart';

part 'product_request_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class ProductRequestDto {
  ProductRequestDto({
    this.search,
    this.filters,
  });

  final String? search;

  final FilterDto? filters;

  factory ProductRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ProductRequestDtoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$ProductRequestDtoToJson(this);
  }
}
