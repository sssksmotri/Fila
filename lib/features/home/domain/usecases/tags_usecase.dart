import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/tag_entity.dart';
import '../repository/tags_repository.dart';

class TagsUsecase implements UseCase<DataState<List<TagEntity>>, void> {
  final TagsRepository tagsRepository;

  TagsUsecase({required this.tagsRepository});

  @override
  Future<DataState<List<TagEntity>>> call({params}) {
    return tagsRepository.getTags();
  }
}
