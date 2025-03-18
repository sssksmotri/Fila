// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gifts_scale_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftsScaleDto _$GiftsScaleDtoFromJson(Map<String, dynamic> json) =>
    GiftsScaleDto(
      giftsScale: (json['giftsScale'] as List<dynamic>)
          .map((e) => GiftsScaleItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
