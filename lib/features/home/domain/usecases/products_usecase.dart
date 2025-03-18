import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/product_request_entity.dart';
import '../entities/products_search_result_entity.dart';
import '../repository/products_repository.dart';

class ProductsUsecase
    implements
        UseCase<DataState<ProductsSearchResultEntity>?, ProductRequestEntity?> {
  final ProductsRepository repository;

  ProductsUsecase({required this.repository});

  @override
  Future<DataState<ProductsSearchResultEntity>?> call({params}) {
    return repository.getProducts(params!);
  }
}
