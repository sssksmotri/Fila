// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModifierItemDto _$ModifierItemDtoFromJson(Map<String, dynamic> json) =>
    ModifierItemDto(
      id: json['id'] as int,
      title: json['title'] as String,
      price: json['price'] as int?,
      minQuantity: json['min_quantity'] as int?,
      maxQuantity: json['max_quantity'] as int?,
      picture: json['picture'] as String?,
      weight: json['weight'] as String?,
    );

Map<String, dynamic> _$ModifierItemDtoToJson(ModifierItemDto instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price', instance.price);
  writeNotNull('min_quantity', instance.minQuantity);
  writeNotNull('max_quantity', instance.maxQuantity);
  writeNotNull('picture', instance.picture);
  writeNotNull('weight', instance.weight);
  return val;
}
