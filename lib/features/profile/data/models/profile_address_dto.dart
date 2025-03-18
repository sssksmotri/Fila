import 'package:json_annotation/json_annotation.dart';

part 'profile_address_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class ProfileAddressDto {
  ProfileAddressDto({
    this.id,
    this.title,
    this.latitude,
    this.longitude,
    this.street,
    this.house,
    this.building,
    this.entrance,
    this.floor,
    this.appartment,
    this.domofon,
    this.isPrivate = false,
    this.isDefault = false,
  });

  final int? id;
  final String? title;
  final String? latitude;
  final String? longitude;
  final String? street;
  final String? house;
  final String? building;
  final String? entrance;
  final String? floor;
  final String? appartment;
  final String? domofon;
  @JsonKey(name: 'private')
  final bool isPrivate;
  @JsonKey(name: 'default')
  final bool isDefault;

  factory ProfileAddressDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileAddressDtoFromJson(json);
}
