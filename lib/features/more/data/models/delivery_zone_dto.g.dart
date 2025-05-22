// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_zone_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryZoneDto _$DeliveryZoneDtoFromJson(Map<String, dynamic> json) =>
    DeliveryZoneDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      fill: json['fill'] as String,
      fillOpacity: json['fill_opacity'] as String,
      stroke: json['stroke'] as String,
      price: json['price'] as String?,
      polygon: json['polygon'] as String,
    );
