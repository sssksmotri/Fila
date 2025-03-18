import 'package:json_annotation/json_annotation.dart';

import 'category_dto.dart';

part 'categories_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class CategoriesDto {
  CategoriesDto({
    this.categories,
  });
  @JsonKey(name: 'data')
  final List<CategoryDto>? categories;

  factory CategoriesDto.fromJson(Map<String, dynamic> json) =>
      _$CategoriesDtoFromJson(json);
}
