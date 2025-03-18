import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/settings_entity.dart';
import '../repository/settings_repository.dart';

class SettingsUsecase implements UseCase<DataState<SettingsEntity>, void> {
  final SettingsRepository repository;

  SettingsUsecase({required this.repository});

  @override
  Future<DataState<SettingsEntity>> call({params}) {
    return repository.getSettings();
  }
}
