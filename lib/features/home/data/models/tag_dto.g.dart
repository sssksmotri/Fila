// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TagDto _$TagDtoFromJson(Map<String, dynamic> json) => TagDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      color: json['color'] as String,
      secondColor: json['second_color'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$TagDtoToJson(TagDto instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'color': instance.color,
      if (instance.secondColor case final value?) 'second_color': value,
      if (instance.icon case final value?) 'icon': value,
    };
