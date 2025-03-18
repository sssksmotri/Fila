import 'package:monobox/features/home/data/models/action_dto.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../models/banner_dto.dart';
part 'banners_api_service.g.dart';

@RestApi()
abstract class BannersApiService {
  factory BannersApiService(Dio dio) = _BannersApiService;

  @GET('/promo')
  Future<List<BannerDto>> getBanners();

  @GET('/actions/{id}')
  Future<ActionDto> getAction(@Path('id') int id);
}
