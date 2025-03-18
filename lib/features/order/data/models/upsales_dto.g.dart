// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upsales_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpsalesDto _$UpsalesDtoFromJson(Map<String, dynamic> json) => UpsalesDto(
      title: json['title'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
