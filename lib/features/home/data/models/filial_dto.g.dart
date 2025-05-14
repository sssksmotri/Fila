// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filial_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilialDto _$FilialDtoFromJson(Map<String, dynamic> json) => FilialDto(
      id: (json['id'] as num).toInt(),
      cityId: (json['city_id'] as num?)?.toInt(),
      name: json['title'] as String,
      coordinates:
          FilialCoordinatesDto.fromJson(json['coords'] as Map<String, dynamic>),
      timeDelay: (json['time_delay'] as num?)?.toInt(),
      distance: json['distance'] as String?,
      rezhim: (json['rezhim'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      rezhimToday: json['rezhim_today'] as String?,
      statusOpened: json['status_opened'] as String?,
      statusOpenedColor: json['status_opened_color'] as String?,
      startTodayTimestamp: (json['start_today_timestamp'] as num?)?.toInt(),
      endTodayTimestamp: (json['end_today_timestamp'] as num?)?.toInt(),
    );

FilialCoordinatesDto _$FilialCoordinatesDtoFromJson(
        Map<String, dynamic> json) =>
    FilialCoordinatesDto(
      lat: FilialCoordinatesDto._stringToDouble(json['latitude']),
      lon: FilialCoordinatesDto._stringToDouble(json['longitude']),
    );
