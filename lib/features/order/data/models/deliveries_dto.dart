import 'package:json_annotation/json_annotation.dart';

import 'delivery_dto.dart';

part 'deliveries_dto.g.dart';

@JsonSerializable(
  createToJson: false,
)
class DeliveriesDto {
  DeliveriesDto({
    this.deliveries,
  });
  @JsonKey(name: 'data')
  final List<DeliveryDto>? deliveries;

  factory DeliveriesDto.fromJson(Map<String, dynamic> json) =>
      _$DeliveriesDtoFromJson(json);
}
