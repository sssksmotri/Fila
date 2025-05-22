// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promocode_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PromocodeDto _$PromocodeDtoFromJson(Map<String, dynamic> json) => PromocodeDto(
      code: json['code'] as String,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$PromocodeDtoToJson(PromocodeDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      if (instance.message case final value?) 'message': value,
    };
