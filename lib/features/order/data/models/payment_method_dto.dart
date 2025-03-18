import 'package:json_annotation/json_annotation.dart';

part 'payment_method_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class PaymentMethodDto {
  PaymentMethodDto({
    required this.id,
    required this.name,
    this.code,
  });
  final int id;
  @JsonKey(name: 'title')
  final String name;
  final String? code;

  factory PaymentMethodDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodDtoFromJson(json);
}
