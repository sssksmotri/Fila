import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../models/collection_dto.dart';
import '../../models/collections_dto.dart';

part 'collections_api_service.g.dart';

@RestApi()
abstract class CollectionsApiService {
  factory CollectionsApiService(Dio dio) = _CollectionsApiService;

  @GET('/collections')
  Future<CollectionsDto> getCollections();

  @GET('/collections/{id}')
  Future<CollectionDto> getCollection(@Path('id') int id);
}
