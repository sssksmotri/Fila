// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductRequestDto _$ProductRequestDtoFromJson(Map<String, dynamic> json) =>
    ProductRequestDto(
      search: json['search'] as String?,
      filters: json['filters'] == null
          ? null
          : FilterDto.fromJson(json['filters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductRequestDtoToJson(ProductRequestDto instance) =>
    <String, dynamic>{
      if (instance.search case final value?) 'search': value,
      if (instance.filters case final value?) 'filters': value,
    };
