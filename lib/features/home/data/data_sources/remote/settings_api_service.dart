import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../models/settings_dto.dart';

part 'settings_api_service.g.dart';

@RestApi()
abstract class SettingsApiService {
  factory SettingsApiService(Dio dio) = _SettingsApiService;

  @GET('/settings/app')
  Future<SettingsDto> getSettings();
}
