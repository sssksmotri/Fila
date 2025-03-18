import '../../../../core/resources/data_state.dart';
import '../entities/product_request_entity.dart';
import '../entities/products_search_result_entity.dart';

abstract class ProductsRepository {
  Future<DataState<ProductsSearchResultEntity>> getProducts(
      ProductRequestEntity request);
}
