import 'package:monobox/features/profile/data/models/loyalty_entry_request_dto.dart';
import 'package:monobox/features/profile/data/models/loyalty_entry_response_dto.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../models/loyalty_dto.dart';

part 'loyalty_api_service.g.dart';

@RestApi()
abstract class LoyaltyApiService {
  factory LoyaltyApiService(Dio dio) = _LoyaltyApiService;

  @GET('/loyalty/info')
  Future<List<LoyaltyDto>> loyaltyInfo();

  @POST('/loyalty/entry')
  Future<LoyaltyEntryResponseDto> loyaltyEntry(
    @Body() LoyaltyEntryRequestDto query,
  );
}
