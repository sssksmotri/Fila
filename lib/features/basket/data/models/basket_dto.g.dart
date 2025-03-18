// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BasketDtoAdapter extends TypeAdapter<BasketDto> {
  @override
  final int typeId = 3;

  @override
  BasketDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BasketDto(
      offers: (fields[0] as List).cast<BasketOfferDto>(),
    );
  }

  @override
  void write(BinaryWriter writer, BasketDto obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.offers);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BasketDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasketDto _$BasketDtoFromJson(Map<String, dynamic> json) => BasketDto(
      offers: (json['offers'] as List<dynamic>)
          .map((e) => BasketOfferDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BasketDtoToJson(BasketDto instance) => <String, dynamic>{
      'offers': instance.offers,
    };
