// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_entry_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyEntryRequestDto _$LoyaltyEntryRequestDtoFromJson(
        Map<String, dynamic> json) =>
    LoyaltyEntryRequestDto(
      name: json['name'] as String,
      email: json['email'] as String,
      birthdate: json['birthdate'] as String,
    );

Map<String, dynamic> _$LoyaltyEntryRequestDtoToJson(
        LoyaltyEntryRequestDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'birthdate': instance.birthdate,
    };
