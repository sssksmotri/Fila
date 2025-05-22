// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailsAddressDto _$OrderDetailsAddressDtoFromJson(
        Map<String, dynamic> json) =>
    OrderDetailsAddressDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      zipcode: json['zipcode'] as String?,
      country: json['country'] as String?,
      region: json['region'] as String?,
      city: json['city'] as String?,
      house: json['house'] as String?,
      building: json['building'] as String?,
      entrance: json['entrance'] as String?,
      floor: json['floor'] as String?,
      appartment: json['appartment'] as String?,
      kladrId: json['kladr_id'] as String?,
      uid: json['uid'] as String?,
      domofon: json['domofon'] as String?,
    );
