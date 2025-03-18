import 'package:json_annotation/json_annotation.dart';

part 'basket_modifire_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class BasketModifireDto {
  BasketModifireDto({
    required this.id,
  });

  final int id;

  factory BasketModifireDto.fromJson(Map<String, dynamic> json) => _$BasketModifireDtoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$BasketModifireDtoToJson(this);
  }
}
