import '../../../domain/entities/order_created_entity.dart';
import '../../../domain/entities/order_create_entity.dart';
import '../../models/order_create_request_dto.dart';
import '../../models/order_create_response_dto.dart';

class OrderMapper {
  static OrderCreateRequestDto toModel(
    OrderCreateEntity model,
  ) {
    return OrderCreateRequestDto(
      paymentId: model.paymentId,
      deliveryId: model.deliveryId,
      addressId: model.addressId,
      filialId: model.filialId,
      products: model.orderedPositions
          .map((orderedPosition) => OrderProductDto(
                id: orderedPosition.productId,
                quantity: orderedPosition.quantity,
              ))
          .toList(),
      completeBefore: model.completeBefore,
      remoteDelivery: model.remoteDelivery,
      moneyChange: model.moneyChange,
      // customer: model.customer != null
      //     ? OrderCustomerDto(
      //         phone: model.customer!.phone,
      //         name: model.customer!.name,
      //         surname: model.customer!.surname,
      //         birthdate: model.customer!.birthdate,
      //         email: model.customer!.email,
      //       )
      //     : null,
      // address: model.address != null
      //     ? OrderAddressDto(
      //         coords: model.address!.coords != null
      //             ? OrderAddressCoordsDto(
      //                 x: model.address!.coords!.lat,
      //                 y: model.address!.coords!.lon,
      //               )
      //             : null,
      //         comment: model.address!.comment,
      //       )
      //     : null,
      orderComment: model.comment,
      needCall: model.needCall,
      promocode: model.promocode,
      bonusWithdraw: model.bonusWithdraw,
      gifts: model.gifts
          ?.map((gift) => OrderProductDto(
                id: gift.productId,
                quantity: gift.quantity,
              ))
          .toList(),
    );
  }

  static OrderCreatedEntity toEntity(
    OrderCreateResponseDto model,
  ) {
    return OrderCreatedEntity(
      id: model.id,
      status: model.status,
      paymentUrl: model.paymentUrl,
    );
  }
}
