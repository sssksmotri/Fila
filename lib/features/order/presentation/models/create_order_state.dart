import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../address_setup/domain/entities/address_entity.dart';
import '../../../more/domain/entities/shop_entity.dart';
import '../../domain/entities/delivery_entity.dart';
part 'create_order_state.freezed.dart';

@freezed
class CreateOrderState with _$CreateOrderState {
  const CreateOrderState._();

  String get deliveryTimeValue => DateFormat.Hm().format(deliveryTime!);

  const factory CreateOrderState({
    AddressEntity? deliveryAddress,
    DeliveryEntity? delivery,
    ShopEntity? deliveryShop,
    int? deliveryTimeTypeIndex,
    int? paymentMethodIndex,
    bool? useBonuses,
    bool? makeCall,
    bool? stayNearDoor,
    DateTime? deliveryDate,
    DateTime? deliveryTime,
    @Default(true) bool itogoIsCollapsed,
  }) = _CreateOrderState;
}
