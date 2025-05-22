// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditUserDto _$EditUserDtoFromJson(Map<String, dynamic> json) => EditUserDto(
      name: json['name'] as String?,
      email: json['email'] as String?,
      birthdate: json['birthdate'] as String?,
    );

Map<String, dynamic> _$EditUserDtoToJson(EditUserDto instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.email case final value?) 'email': value,
      if (instance.birthdate case final value?) 'birthdate': value,
    };
