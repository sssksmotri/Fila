// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationDto _$NotificationDtoFromJson(Map<String, dynamic> json) =>
    NotificationDto(
      title: json['title'] as String,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  NotificationItemDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );
