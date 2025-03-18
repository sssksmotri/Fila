import 'package:monobox/features/basket/domain/entities/basket_info_request_entity.dart';

class BasketRequest {
  final List<BasketInfoRequestEntity> baket;
  final int deliveryId;

  BasketRequest({
    required this.baket,
    required this.deliveryId,
  });
}
