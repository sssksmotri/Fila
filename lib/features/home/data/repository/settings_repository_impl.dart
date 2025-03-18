import 'package:dio/dio.dart';
import 'package:monobox/features/home/domain/entities/settings_entity.dart';
import '../../../../core/resources/data_state.dart';
import '../../domain/repository/settings_repository.dart';
import '../data_sources/remote/settings_api_service.dart';
import '../models/settings_dto.dart';
import 'mappers/settings_mapper.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsApiService service;

  SettingsRepositoryImpl({required this.service});

  @override
  Future<DataState<SettingsEntity>> getSettings() async {
    try {
      SettingsDto settings = await service.getSettings();

      return DataSuccess(
        SettingsMapper.toEntity(settings),
      );
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
