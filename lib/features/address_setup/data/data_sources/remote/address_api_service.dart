import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../models/address_create_request_dto.dart';
import '../../models/address_dto.dart';

part 'address_api_service.g.dart';

@RestApi()
abstract class AddressApiService {
  factory AddressApiService(Dio dio) = _AddressApiService;

  @POST('/addresses/create')
  Future<AddressDto> create(
    @Body() AddressCreateRequestDto orderCreateRequestDto,
  );

  @GET('/addresses')
  Future<List<AddressDto>> getAddresses();

  @PATCH('/addresses/{id}')
  Future<AddressDto> edit(
    @Path('id') int id,
    @Body() AddressDto address,
  );

  @DELETE('/addresses/{id}')
  Future<void> delete(@Path('id') int id);
}
