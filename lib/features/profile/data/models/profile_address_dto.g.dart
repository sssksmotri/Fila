// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileAddressDto _$ProfileAddressDtoFromJson(Map<String, dynamic> json) =>
    ProfileAddressDto(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      street: json['street'] as String?,
      house: json['house'] as String?,
      building: json['building'] as String?,
      entrance: json['entrance'] as String?,
      floor: json['floor'] as String?,
      appartment: json['appartment'] as String?,
      domofon: json['domofon'] as String?,
      isPrivate: json['private'] as bool? ?? false,
      isDefault: json['default'] as bool? ?? false,
    );
