// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) => CategoryDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      isCollection: json['is_collection'] as bool,
      picture: json['picture'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      color: json['color'] as String?,
    );
