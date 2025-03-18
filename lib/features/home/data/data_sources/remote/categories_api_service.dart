import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../models/categories_dto.dart';
part 'categories_api_service.g.dart';

@RestApi()
abstract class CategoriesApiService {
  factory CategoriesApiService(Dio dio) = _CategoriesApiService;

  @GET('/categories/all')
  Future<CategoriesDto> getCategories();
}
