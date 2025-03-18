import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

part 'product_option_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
@HiveType(typeId: 1)
class ProductOptionDto {
  ProductOptionDto({
    required this.id,
    required this.name,
    this.picture,
    this.description,
    this.price,
    this.unit,
  });
  @HiveField(0)
  final int id;

  @JsonKey(name: 'title')
  @HiveField(1)
  final String name;

  @JsonKey(name: 'image')
  @HiveField(2)
  final String? picture;

  @HiveField(3)
  final String? description;

  @HiveField(4)
  final int? price;

  @HiveField(5)
  final String? unit;

  factory ProductOptionDto.fromJson(Map<String, dynamic> json) =>
      _$ProductOptionDtoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$ProductOptionDtoToJson(this);
  }
}
