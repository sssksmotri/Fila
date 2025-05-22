// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModifierItemDto _$ModifierItemDtoFromJson(Map<String, dynamic> json) =>
    ModifierItemDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      price: (json['price'] as num?)?.toInt(),
      minQuantity: (json['min_quantity'] as num?)?.toInt(),
      maxQuantity: (json['max_quantity'] as num?)?.toInt(),
      picture: json['picture'] as String?,
      weight: json['weight'] as String?,
    );

Map<String, dynamic> _$ModifierItemDtoToJson(ModifierItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      if (instance.price case final value?) 'price': value,
      if (instance.minQuantity case final value?) 'min_quantity': value,
      if (instance.maxQuantity case final value?) 'max_quantity': value,
      if (instance.picture case final value?) 'picture': value,
      if (instance.weight case final value?) 'weight': value,
    };
