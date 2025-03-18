import '../../../../core/resources/data_state.dart';
import '../../domain/entities/category_entity.dart';
import '../../domain/repository/categories_repository.dart';
import '../data_sources/remote/categories_api_service.dart';
import '../models/categories_dto.dart';
import 'mappers/categories_mapper.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  final CategoriesApiService service;

  CategoriesRepositoryImpl({required this.service});

  @override
  Future<DataState<List<CategoryEntity>>?> getCategories() async {
    CategoriesDto categories = await service.getCategories();

    return DataSuccess(
      CategoriesMapper.toCategoriesEntity(categories.categories ?? []),
    );
  }
}
