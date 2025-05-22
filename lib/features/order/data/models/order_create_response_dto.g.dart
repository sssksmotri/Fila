// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_create_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderCreateResponseDto _$OrderCreateResponseDtoFromJson(
        Map<String, dynamic> json) =>
    OrderCreateResponseDto(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
      paymentUrl: json['payment_url'] as String?,
    );
