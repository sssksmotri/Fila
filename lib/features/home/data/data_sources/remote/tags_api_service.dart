import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../models/tag_dto.dart';
part 'tags_api_service.g.dart';

@RestApi()
abstract class TagsApiService {
  factory TagsApiService(Dio dio) = _TagsApiService;

  @GET('/tags')
  Future<List<TagDto>> getTags();
}
