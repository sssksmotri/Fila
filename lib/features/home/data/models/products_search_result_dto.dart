import 'package:json_annotation/json_annotation.dart';
import 'package:monobox/features/home/data/models/product_dto.dart';

part 'products_search_result_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class ProductsSearchResultDto {
  ProductsSearchResultDto({
    this.products = const [],
  });

  @JsonKey(name: 'data')
  final List<ProductDto> products;

  factory ProductsSearchResultDto.fromJson(Map<String, dynamic> json) =>
      _$ProductsSearchResultDtoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$ProductsSearchResultDtoToJson(this);
  }
}
