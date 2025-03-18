import 'package:dio/dio.dart';
import 'package:monobox/features/home/data/models/action_dto.dart';
import 'package:monobox/features/home/domain/entities/action_entity.dart';
import '../../../../core/resources/data_state.dart';
import '../../domain/entities/banner_entity.dart';
import '../../domain/repository/banners_repository.dart';
import '../data_sources/remote/banners_api_service.dart';
import '../models/banner_dto.dart';
import 'mappers/banners_mapper.dart';

class BannersRepositoryImpl implements BannersRepository {
  final BannersApiService service;

  BannersRepositoryImpl({required this.service});

  @override
  Future<DataState<List<BannerEntity>>?> getBanners() async {
    try {
      List<BannerDto> banners = await service.getBanners();
      return DataSuccess(
        BannersMapper.toBannersEntity(banners),
      );
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<ActionEntity>> getAction(int id) async {
    try {
      ActionDto action = await service.getAction(id);
      return DataSuccess(
        ActionEntity(
          id: action.id,
          title: action.title,
          content: action.content,
          description: action.description,
          dopText: action.dopText,
          picture: action.picture,
          mobilePicture: action.mobilePicture,
        ),
      );
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
