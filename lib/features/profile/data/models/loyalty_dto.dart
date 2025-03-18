import 'package:json_annotation/json_annotation.dart';

part 'loyalty_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class LoyaltyDto {
  LoyaltyDto({
    required this.title,
    required this.discount,
    required this.sumFrom,
    required this.active,
  });

  final String title;
  final String discount;
  final String sumFrom;
  final bool active;

  factory LoyaltyDto.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyDtoFromJson(json);
}
