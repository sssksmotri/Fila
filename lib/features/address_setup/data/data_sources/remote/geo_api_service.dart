import 'package:monobox/features/address_setup/data/models/geo_available_dto.dart';
import 'package:monobox/features/address_setup/data/models/geo_available_request_dto.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../models/geo_suggestion_dto.dart';
import '../../models/geo_suggestion_request_dto.dart';

part 'geo_api_service.g.dart';

@RestApi()
abstract class GeoApiService {
  factory GeoApiService(Dio dio) = _GeoApiService;

  @POST('/geo/suggestions')
  Future<List<GeoSuggestionDto>> suggestions(
    @Body() GeoSuggestionRequestDto query,
  );

  @POST('/geo/available')
  Future<GeoAvailableDto> available(
    @Body() GeoAvailableRequestDto query,
  );
}
