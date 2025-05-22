// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_suggestion_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoSuggestionDto _$GeoSuggestionDtoFromJson(Map<String, dynamic> json) =>
    GeoSuggestionDto(
      value: json['value'] as String?,
      street: json['street'] as String?,
      streetType: json['street_type'] as String?,
      house: json['house'] as String?,
      block: json['block'] as String?,
      flat: json['flat'] as String?,
      geoLat: json['geo_lat'] as String?,
      geoLon: json['geo_lon'] as String?,
    );

Map<String, dynamic> _$GeoSuggestionDtoToJson(GeoSuggestionDto instance) =>
    <String, dynamic>{
      if (instance.value case final value?) 'value': value,
      if (instance.street case final value?) 'street': value,
      if (instance.streetType case final value?) 'street_type': value,
      if (instance.house case final value?) 'house': value,
      if (instance.block case final value?) 'block': value,
      if (instance.flat case final value?) 'flat': value,
      if (instance.geoLat case final value?) 'geo_lat': value,
      if (instance.geoLon case final value?) 'geo_lon': value,
    };
