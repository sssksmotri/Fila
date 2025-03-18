import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/collection_entity.dart';
import '../repository/collections_repository.dart';

class CollectionsUsecase
    implements UseCase<DataState<List<CollectionEntity>>?, void> {
  final CollectionsRepository collectionsRepository;

  CollectionsUsecase({required this.collectionsRepository});

  @override
  Future<DataState<List<CollectionEntity>>?> call({params}) {
    return collectionsRepository.getCollections();
  }
}
