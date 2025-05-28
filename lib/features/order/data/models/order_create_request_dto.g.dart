// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_create_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderCreateRequestDto _$OrderCreateRequestDtoFromJson(
        Map<String, dynamic> json) =>
    OrderCreateRequestDto(
      products: (json['products'] as List<dynamic>)
          .map((e) => OrderProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentId: (json['payment_id'] as num).toInt(),
      deliveryId: (json['delivery_id'] as num).toInt(),
      filialId: (json['filial_id'] as num?)?.toInt(),
      addressId: (json['address_id'] as num?)?.toInt(),
      completeBefore: json['complete_before'] as String?,
      remoteDelivery: json['remote_delivery'] as bool? ?? false,
      moneyChange: json['money_change'] as String?,
      orderComment: json['order_comment'] as String?,
      needCall: json['need_call'] as bool?,
      promocode: json['promocode'] as String?,
      bonusWithdraw: json['bonus_withdraw'] as String?,
      gifts: (json['gifts'] as List<dynamic>?)
          ?.map((e) => OrderProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderCreateRequestDtoToJson(
        OrderCreateRequestDto instance) =>
    <String, dynamic>{
      'payment_id': instance.paymentId,
      'delivery_id': instance.deliveryId,
      if (instance.addressId case final value?) 'address_id': value,
      if (instance.filialId case final value?) 'filial_id': value,
      'products': instance.products,
      if (instance.gifts case final value?) 'gifts': value,
      if (instance.completeBefore case final value?) 'complete_before': value,
      'remote_delivery': instance.remoteDelivery,
      if (instance.needCall case final value?) 'need_call': value,
      if (instance.moneyChange case final value?) 'money_change': value,
      if (instance.orderComment case final value?) 'order_comment': value,
      if (instance.promocode case final value?) 'promocode': value,
      if (instance.bonusWithdraw case final value?) 'bonus_withdraw': value,
    };

OrderProductDto _$OrderProductDtoFromJson(Map<String, dynamic> json) =>
    OrderProductDto(
      id: (json['id'] as num).toInt(),
      quantity: (json['qnt'] as num).toInt(),
      modifiers: (json['modifiers'] as List<dynamic>?)
              ?.map(
                  (e) => BasketModifireDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$OrderProductDtoToJson(OrderProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qnt': instance.quantity,
      'modifiers': instance.modifiers,
    };

OrderCustomerDto _$OrderCustomerDtoFromJson(Map<String, dynamic> json) =>
    OrderCustomerDto(
      phone: json['phone'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      birthdate: json['birthdate'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$OrderCustomerDtoToJson(OrderCustomerDto instance) =>
    <String, dynamic>{
      if (instance.phone case final value?) 'phone': value,
      if (instance.name case final value?) 'name': value,
      if (instance.surname case final value?) 'surname': value,
      if (instance.birthdate case final value?) 'birthdate': value,
      if (instance.email case final value?) 'email': value,
    };

OrderAddressDto _$OrderAddressDtoFromJson(Map<String, dynamic> json) =>
    OrderAddressDto(
      coords: json['coords'] == null
          ? null
          : OrderAddressCoordsDto.fromJson(
              json['coords'] as Map<String, dynamic>),
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$OrderAddressDtoToJson(OrderAddressDto instance) =>
    <String, dynamic>{
      if (instance.coords case final value?) 'coords': value,
      if (instance.comment case final value?) 'comment': value,
    };

OrderAddressCoordsDto _$OrderAddressCoordsDtoFromJson(
        Map<String, dynamic> json) =>
    OrderAddressCoordsDto(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );

Map<String, dynamic> _$OrderAddressCoordsDtoToJson(
        OrderAddressCoordsDto instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };
