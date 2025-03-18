import 'package:dio/dio.dart';
import '../../../../core/resources/data_state.dart';
import '../../domain/entities/tag_entity.dart';
import '../../domain/repository/tags_repository.dart';
import '../data_sources/remote/tags_api_service.dart';
import '../models/tag_dto.dart';
import 'mappers/tags_mapper.dart';

class TagsRepositoryImpl implements TagsRepository {
  final TagsApiService service;

  TagsRepositoryImpl({required this.service});

  @override
  Future<DataState<List<TagEntity>>> getTags() async {
    try {
      List<TagDto> tags = await service.getTags();

      return DataSuccess(
        TagsMapper.toEntities(tags),
      );
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
