import 'package:json_annotation/json_annotation.dart';

part 'order_details_address_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class OrderDetailsAddressDto {
  OrderDetailsAddressDto({
    required this.id,
    this.title,
    this.zipcode,
    this.country,
    this.region,
    this.city,
    this.house,
    this.building,
    this.entrance,
    this.floor,
    this.appartment,
    this.kladrId,
    this.uid,
    this.domofon,
  });

  final int id;
  final String? title;
  final String? zipcode;
  final String? country;
  final String? region;
  final String? city;
  final String? house;
  final String? building;
  final String? entrance;
  final String? floor;
  final String? appartment;
  final String? kladrId;
  final String? uid;
  final String? domofon;

  factory OrderDetailsAddressDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsAddressDtoFromJson(json);
}
