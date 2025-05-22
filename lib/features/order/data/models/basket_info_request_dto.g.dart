// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_info_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasketInfoRequestDto _$BasketInfoRequestDtoFromJson(
        Map<String, dynamic> json) =>
    BasketInfoRequestDto(
      id: (json['id'] as num).toInt(),
      qnt: (json['qnt'] as num).toInt(),
      modifiers: (json['modifiers'] as List<dynamic>?)
              ?.map(
                  (e) => BasketModifireDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$BasketInfoRequestDtoToJson(
        BasketInfoRequestDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qnt': instance.qnt,
      if (instance.modifiers case final value?) 'modifiers': value,
    };
