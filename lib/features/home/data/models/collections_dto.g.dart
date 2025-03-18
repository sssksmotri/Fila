// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collections_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CollectionsDto _$CollectionsDtoFromJson(Map<String, dynamic> json) =>
    CollectionsDto(
      collections: (json['data'] as List<dynamic>?)
          ?.map((e) => CollectionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
