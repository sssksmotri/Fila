import 'package:monobox/features/home/domain/entities/collection_entity.dart';

import '../../../../core/resources/data_state.dart';

abstract class CollectionsRepository {
  Future<DataState<List<CollectionEntity>>?> getCollections();

  Future<DataState<CollectionEntity>?> getCollection(int id);
}
