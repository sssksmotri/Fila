// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModifierDto _$ModifierDtoFromJson(Map<String, dynamic> json) => ModifierDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      type: json['type'] as String?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ModifierItemDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      minQuantity: (json['min_quantity'] as num?)?.toInt(),
      maxQuantity: (json['max_quantity'] as num?)?.toInt(),
      weight: (json['weight'] as num?)?.toInt(),
      isHalfPizza: json['is_half_pizza'] as bool? ?? false,
    );

Map<String, dynamic> _$ModifierDtoToJson(ModifierDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      if (instance.type case final value?) 'type': value,
      'items': instance.items,
      if (instance.minQuantity case final value?) 'min_quantity': value,
      if (instance.maxQuantity case final value?) 'max_quantity': value,
      if (instance.weight case final value?) 'weight': value,
      'is_half_pizza': instance.isHalfPizza,
    };
