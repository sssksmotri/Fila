// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationItemDto _$NotificationItemDtoFromJson(Map<String, dynamic> json) =>
    NotificationItemDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      status: json['status'] as bool? ?? false,
    );

Map<String, dynamic> _$NotificationItemDtoToJson(
        NotificationItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'status': instance.status,
    };
