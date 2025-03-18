// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_available_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoAvailableDto _$GeoAvailableDtoFromJson(Map<String, dynamic> json) =>
    GeoAvailableDto(
      status: json['status'] as String,
      filial: json['filial'] == null
          ? null
          : FilialDto.fromJson(json['filial'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );
