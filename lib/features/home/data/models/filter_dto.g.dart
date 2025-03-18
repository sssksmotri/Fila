// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilterDto _$FilterDtoFromJson(Map<String, dynamic> json) => FilterDto(
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => FilterTagDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FilterDtoToJson(FilterDto instance) => <String, dynamic>{
      'tags': instance.tags,
    };
