// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDto _$OrderDtoFromJson(Map<String, dynamic> json) => OrderDto(
      id: (json['id'] as num).toInt(),
      number: _numberFromJson(json['number']),
      status: json['status'] as String,
      totalPrice: (json['total_price'] as num).toDouble(),
      createdAt: json['created_at'] as String,
      needReview: json['need_review'] as bool,
      products: (json['products'] as List<dynamic>)
          .map((e) => OrderProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
