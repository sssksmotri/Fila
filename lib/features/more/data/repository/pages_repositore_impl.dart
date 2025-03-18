import 'package:dio/dio.dart';
import 'package:monobox/core/resources/data_state.dart';

import 'package:monobox/features/more/domain/entities/page_entity.dart';

import '../../domain/repository/pages_repository.dart';
import '../data_source/remote/pages_api_service.dart';
import '../models/page_dto.dart';
import '../models/page_request_dto.dart';

class PagesRepositoryImpl implements PagesRepository {
  final PagesApiService service;

  PagesRepositoryImpl({required this.service});

  @override
  Future<DataState<PageEntity>> getPage(String url) async {
    try {
      PageDto page = await service.getPage(PageRequestDto(url: url));

      return DataSuccess(
        PageEntity(
          title: page.title,
          content: page.content,
        ),
      );
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
