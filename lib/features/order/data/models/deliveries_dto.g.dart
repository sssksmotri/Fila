// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deliveries_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveriesDto _$DeliveriesDtoFromJson(Map<String, dynamic> json) =>
    DeliveriesDto(
      deliveries: (json['data'] as List<dynamic>?)
          ?.map((e) => DeliveryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
