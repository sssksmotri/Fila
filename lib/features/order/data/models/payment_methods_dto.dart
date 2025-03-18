import 'package:json_annotation/json_annotation.dart';

import 'payment_method_dto.dart';

part 'payment_methods_dto.g.dart';

@JsonSerializable(
  createToJson: false,
)
class PaymentMethodsDto {
  PaymentMethodsDto({
    this.paymentMethods,
  });
  @JsonKey(name: 'data')
  final List<PaymentMethodDto>? paymentMethods;

  factory PaymentMethodsDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodsDtoFromJson(json);
}
