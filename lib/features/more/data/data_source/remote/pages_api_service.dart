import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../models/delivery_zone_dto.dart';
import '../../models/page_dto.dart';
import '../../models/page_request_dto.dart';

part 'pages_api_service.g.dart';

@RestApi()
abstract class PagesApiService {
  factory PagesApiService(Dio dio) = _PagesApiService;

  @GET('/pages')
  Future<PageDto> getPage(
    @Body() PageRequestDto pageRequest,
  );

  @GET('/delivery_zones')
  Future<List<DeliveryZoneDto>> getDeliveryZones();
}
