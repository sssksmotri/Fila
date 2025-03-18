// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) => ProfileDto(
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      addresses: (json['addresses'] as List<dynamic>?)
              ?.map(
                  (e) => ProfileAddressDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => ProfileChildDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      cards: (json['cards'] as List<dynamic>?)
              ?.map((e) => ProfileCardDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      bonus: json['bonus'] == null
          ? null
          : ProfileBonusDto.fromJson(json['bonus'] as Map<String, dynamic>),
    );
