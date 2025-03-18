import '../models/collection_dto.dart';
import '../../domain/entities/collection_entity.dart';

import '../../../../core/resources/data_state.dart';
import '../../domain/repository/collections_repository.dart';
import '../data_sources/remote/collections_api_service.dart';
import '../models/collections_dto.dart';
import 'mappers/collections_mapper.dart';

class CollectionsRepositoryImpl implements CollectionsRepository {
  final CollectionsApiService service;

  CollectionsRepositoryImpl({required this.service});

  @override
  Future<DataState<CollectionEntity>?> getCollection(int id) async {
    CollectionDto collection = await service.getCollection(id);

    return DataSuccess(
      CollectionsMapper.toEntity(collection),
    );
  }

  @override
  Future<DataState<List<CollectionEntity>>?> getCollections() async {
    CollectionsDto collections = await service.getCollections();

    return DataSuccess(
      CollectionsMapper.toEntities(collections),
    );
  }
}
