// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filial_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilialDto _$FilialDtoFromJson(Map<String, dynamic> json) => FilialDto(
      id: json['id'] as int,
      cityId: json['city_id'] as int?,
      name: json['title'] as String,
      coordinates:
          FilialCoordinatesDto.fromJson(json['coords'] as Map<String, dynamic>),
      timeDelay: json['time_delay'] as String?,
      distance: json['distance'] as String?,
      rezhim: json['rezhim'] as Map<String, dynamic>?,
      rezhimToday: json['rezhim_today'] as String?,
    );

FilialCoordinatesDto _$FilialCoordinatesDtoFromJson(
        Map<String, dynamic> json) =>
    FilialCoordinatesDto(
      lat: json['latitude'] as String,
      lon: json['longitude'] as String,
    );
