import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../models/product_dto.dart';
import '../../models/product_request_dto.dart';
part 'products_api_service.g.dart';

@RestApi()
abstract class ProductsApiService {
  factory ProductsApiService(Dio dio) = _ProductsApiService;

  @GET('/products')
  Future<List<ProductDto>> getProducts(
    @Body() ProductRequestDto productRequest,
  );

  @GET('/products/sauses')
  Future<List<ProductDto>> getSauses();
}
