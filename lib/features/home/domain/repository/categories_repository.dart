import '../../../../core/resources/data_state.dart';
import '../entities/category_entity.dart';

abstract class CategoriesRepository {
  Future<DataState<List<CategoryEntity>>?> getCategories();
}
