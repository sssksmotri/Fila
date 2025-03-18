import '../../../../core/resources/data_state.dart';
import '../entities/settings_entity.dart';

abstract class SettingsRepository {
  Future<DataState<SettingsEntity>> getSettings();
}
