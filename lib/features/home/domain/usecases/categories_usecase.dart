import 'package:monobox/features/home/domain/repository/categories_repository.dart';

import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/category_entity.dart';

class CategoriesUsecase
    implements UseCase<DataState<List<CategoryEntity>>?, void> {
  final CategoriesRepository categoriesRepository;

  CategoriesUsecase({required this.categoriesRepository});

  @override
  Future<DataState<List<CategoryEntity>>?> call({params}) {
    return categoriesRepository.getCategories();
  }
}
