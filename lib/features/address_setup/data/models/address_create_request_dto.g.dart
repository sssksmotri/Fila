// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_create_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressCreateRequestDto _$AddressCreateRequestDtoFromJson(
        Map<String, dynamic> json) =>
    AddressCreateRequestDto(
      title: json['title'] as String,
      street: json['street'] as String,
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
      cityId: (json['city_id'] as num?)?.toInt(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AddressCreateRequestDtoToJson(
        AddressCreateRequestDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'street': instance.street,
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
      if (instance.latitude case final value?) 'latitude': value,
      if (instance.longitude case final value?) 'longitude': value,
      if (instance.cityId case final value?) 'city_id': value,
    };
