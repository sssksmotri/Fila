import 'package:equatable/equatable.dart';
import 'package:monobox/features/home/domain/entities/option_entity.dart';

import 'address_entity.dart';
import 'ordered_position_entity.dart';

class OrderCreateEntity extends Equatable {
  final int paymentId;
  final int deliveryId;
  final int? addressId;
  final int? filialId;
  final List<OrderedPositionEntity> orderedPositions;
  final List<OrderedPositionEntity>? gifts;
  final String? completeBefore;
  final bool remoteDelivery;
  final String? moneyChange;
  //final CustomerEntity? customer;
  final AddressEntity? address;
  final String? comment;
  final bool? needCall;
  final String? promocode;
  final String? bonusWithdraw;
  final List<ProductOptionEntity>? modifiers;
  const OrderCreateEntity({
    required this.paymentId,
    required this.deliveryId,
    this.filialId,
    this.addressId,
    required this.orderedPositions,
    this.gifts,
    this.completeBefore,
    this.remoteDelivery = false,
    this.moneyChange,
    //this.customer,
    this.address,
    this.comment,
    this.needCall,
    this.promocode,
    this.bonusWithdraw,
    this.modifiers,
  });

  @override
  List<Object?> get props => [
        paymentId,
        deliveryId,
        addressId,
        orderedPositions,
        completeBefore,
        remoteDelivery,
        moneyChange,
        //customer,
        address,
        comment,
        needCall,
        gifts,
        promocode,
        bonusWithdraw,
      ];
}
