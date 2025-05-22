// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeRequestDto _$CodeRequestDtoFromJson(Map<String, dynamic> json) =>
    CodeRequestDto(
      phoneNumber: json['phoneNumber'] as String,
      code: json['code'] as String?,
      deviceId: json['deviceId'] as String?,
    );

Map<String, dynamic> _$CodeRequestDtoToJson(CodeRequestDto instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      if (instance.code case final value?) 'code': value,
      if (instance.deviceId case final value?) 'deviceId': value,
    };
