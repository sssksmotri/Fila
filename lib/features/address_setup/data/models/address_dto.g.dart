// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) => AddressDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      comment: json['comment'] as String?,
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
      street: json['street'] as String?,
      isDefault: json['default'] as bool? ?? false,
    );

Map<String, dynamic> _$AddressDtoToJson(AddressDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      if (instance.comment case final value?) 'comment': value,
      if (instance.zipcode case final value?) 'zipcode': value,
      if (instance.country case final value?) 'country': value,
      if (instance.region case final value?) 'region': value,
      if (instance.city case final value?) 'city': value,
      if (instance.house case final value?) 'house': value,
      if (instance.building case final value?) 'building': value,
      if (instance.entrance case final value?) 'entrance': value,
      if (instance.floor case final value?) 'floor': value,
      if (instance.appartment case final value?) 'appartment': value,
      if (instance.kladrId case final value?) 'kladr_id': value,
      if (instance.uid case final value?) 'uid': value,
      if (instance.domofon case final value?) 'domofon': value,
      if (instance.street case final value?) 'street': value,
      'default': instance.isDefault,
    };
