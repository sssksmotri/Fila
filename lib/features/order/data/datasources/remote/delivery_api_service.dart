import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../models/deliveries_dto.dart';

part 'delivery_api_service.g.dart';

@RestApi()
abstract class DeliveryApiService {
  factory DeliveryApiService(Dio dio) = _DeliveryApiService;

  @GET('/deliveries')
  Future<DeliveriesDto> getDeliveries();
}
