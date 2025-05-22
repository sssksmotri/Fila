// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filials_search_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilialsSearchRequestDto _$FilialsSearchRequestDtoFromJson(
        Map<String, dynamic> json) =>
    FilialsSearchRequestDto(
      cityId: (json['city_id'] as num?)?.toInt(),
      address: json['address'] as String?,
      coordinates: json['coords'] == null
          ? null
          : CoordinatesDto.fromJson(json['coords'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FilialsSearchRequestDtoToJson(
        FilialsSearchRequestDto instance) =>
    <String, dynamic>{
      if (instance.cityId case final value?) 'city_id': value,
      if (instance.address case final value?) 'address': value,
      if (instance.coordinates case final value?) 'coords': value,
    };
