import 'package:json_annotation/json_annotation.dart';

part 'order_create_response_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class OrderCreateResponseDto {
  OrderCreateResponseDto({
    required this.id,
    required this.status,
    this.paymentUrl,
  });

  final int id;
  final String status;
  final String? paymentUrl;

  factory OrderCreateResponseDto.fromJson(Map<String, dynamic> json) =>
      _$OrderCreateResponseDtoFromJson(json);
}
