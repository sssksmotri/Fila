// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_suggestion_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoSuggestionRequestDto _$GeoSuggestionRequestDtoFromJson(
        Map<String, dynamic> json) =>
    GeoSuggestionRequestDto(
      search: json['search'] as String,
      city: json['city'] as String,
    );

Map<String, dynamic> _$GeoSuggestionRequestDtoToJson(
        GeoSuggestionRequestDto instance) =>
    <String, dynamic>{
      'search': instance.search,
      'city': instance.city,
    };
