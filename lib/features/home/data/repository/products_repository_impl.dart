import 'package:dio/dio.dart';
import 'package:monobox/features/home/data/models/product_dto.dart';
import 'package:monobox/features/home/domain/entities/product_request_entity.dart';
import 'package:monobox/features/home/domain/entities/products_search_result_entity.dart';
import '../../../../core/resources/data_state.dart';
import '../../domain/repository/products_repository.dart';
import '../data_sources/remote/products_api_service.dart';
import '../models/filter_dto.dart';
import '../models/filter_tag_dto.dart';
import '../models/product_request_dto.dart';
import 'mappers/products_mapper.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final ProductsApiService service;

  ProductsRepositoryImpl({required this.service});

  @override
  Future<DataState<ProductsSearchResultEntity>> getProducts(
      ProductRequestEntity request) async {
    try {
      List<ProductDto> products = await service.getProducts(ProductRequestDto(
        search: request.search,
        filters: request.filters != null
            ? FilterDto(
                tags: request.filters!.tags
                    .map((t) => FilterTagDto(id: t.id))
                    .toList(),
              )
            : null,
        // filters: request.filters
        //     .map((f) => FilterDto(
        //         tags: f.tags.map((t) => FilterTagDto(id: t.id)).toList()))
        //     .toList()
      ));

      return DataSuccess(ProductsSearchResultEntity(
        products: ProductsMapper.toProductsEntity(products),
      ));
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
