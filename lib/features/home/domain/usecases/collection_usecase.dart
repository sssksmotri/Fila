import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/collection_entity.dart';
import '../repository/collections_repository.dart';

class CollectionUsecase implements UseCase<DataState<CollectionEntity>?, int?> {
  final CollectionsRepository collectionsRepository;

  CollectionUsecase({required this.collectionsRepository});

  @override
  Future<DataState<CollectionEntity>?> call({params}) {
    return collectionsRepository.getCollection(params!);
  }
}
