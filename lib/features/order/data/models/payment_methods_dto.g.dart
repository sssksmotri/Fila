// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_methods_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethodsDto _$PaymentMethodsDtoFromJson(Map<String, dynamic> json) =>
    PaymentMethodsDto(
      paymentMethods: (json['data'] as List<dynamic>?)
          ?.map((e) => PaymentMethodDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
