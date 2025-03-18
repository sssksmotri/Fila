// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gifts_scale_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftsScaleItemDto _$GiftsScaleItemDtoFromJson(Map<String, dynamic> json) =>
    GiftsScaleItemDto(
      title: json['title'] as String,
      price: json['price'] as String?,
      product: ProductDto.fromJson(json['product'] as Map<String, dynamic>),
    );
