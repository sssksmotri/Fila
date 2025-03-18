// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderProductDto _$OrderProductDtoFromJson(Map<String, dynamic> json) =>
    OrderProductDto(
      id: json['id'] as int,
      qnt: json['qnt'] as int,
      title: json['title'] as String,
      image: json['image'] as String?,
      price: (json['price'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
      isCombo: json['is_combo'] as bool? ?? false,
      isHalfPizza: json['is_half_pizza'] as bool? ?? false,
    );
