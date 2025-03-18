// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_search_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsSearchResultDto _$ProductsSearchResultDtoFromJson(
        Map<String, dynamic> json) =>
    ProductsSearchResultDto(
      products: (json['data'] as List<dynamic>?)
              ?.map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ProductsSearchResultDtoToJson(
        ProductsSearchResultDto instance) =>
    <String, dynamic>{
      'data': instance.products,
    };
