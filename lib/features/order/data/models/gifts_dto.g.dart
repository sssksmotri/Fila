// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gifts_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftsDto _$GiftsDtoFromJson(Map<String, dynamic> json) => GiftsDto(
      gifts: (json['data'] as List<dynamic>)
          .map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
