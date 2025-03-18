// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upsale_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpsaleRequestDto _$UpsaleRequestDtoFromJson(Map<String, dynamic> json) =>
    UpsaleRequestDto(
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$UpsaleRequestDtoToJson(UpsaleRequestDto instance) =>
    <String, dynamic>{
      'types': instance.types,
    };
