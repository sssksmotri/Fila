// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailsStatusDto _$OrderDetailsStatusDtoFromJson(
        Map<String, dynamic> json) =>
    OrderDetailsStatusDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      active: json['active'] as bool? ?? false,
      date: json['date'] as String?,
    );
