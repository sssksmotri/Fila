// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModifierDto _$ModifierDtoFromJson(Map<String, dynamic> json) => ModifierDto(
      id: json['id'] as int,
      title: json['title'] as String,
      type: json['type'] as String?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ModifierItemDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      minQuantity: json['min_quantity'] as int?,
      maxQuantity: json['max_quantity'] as int?,
      weight: json['weight'] as String?,
      isHalfPizza: json['is_half_pizza'] as bool? ?? false,
    );

Map<String, dynamic> _$ModifierDtoToJson(ModifierDto instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  val['items'] = instance.items;
  writeNotNull('min_quantity', instance.minQuantity);
  writeNotNull('max_quantity', instance.maxQuantity);
  writeNotNull('weight', instance.weight);
  val['is_half_pizza'] = instance.isHalfPizza;
  return val;
}
