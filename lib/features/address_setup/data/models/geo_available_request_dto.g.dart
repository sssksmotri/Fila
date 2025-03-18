// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_available_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoAvailableRequestDto _$GeoAvailableRequestDtoFromJson(
        Map<String, dynamic> json) =>
    GeoAvailableRequestDto(
      coords: CoordinatesDto.fromJson(json['coords'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GeoAvailableRequestDtoToJson(
        GeoAvailableRequestDto instance) =>
    <String, dynamic>{
      'coords': instance.coords,
    };
