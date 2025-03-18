import '../../../../core/resources/data_state.dart';
import '../entities/tag_entity.dart';

abstract class TagsRepository {
  Future<DataState<List<TagEntity>>> getTags();
}
