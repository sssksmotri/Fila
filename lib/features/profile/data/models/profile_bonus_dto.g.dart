// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_bonus_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileBonusDto _$ProfileBonusDtoFromJson(Map<String, dynamic> json) =>
    ProfileBonusDto(
      count: (json['count'] as num?)?.toDouble() ?? 0.0,
      available: json['available'] as bool? ?? false,
      sumStill: json['sum_still'] as String?,
      currentStatus: json['current_status'] as String?,
      nextStatus: json['next_status'] as String?,
      numberCard: json['number_card'] as String?,
    );
