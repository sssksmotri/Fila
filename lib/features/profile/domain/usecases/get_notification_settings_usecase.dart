import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/notification_entity.dart';
import '../repositories/profile_repository.dart';

class GetNotificationSettingsUsecase
    implements UseCase<DataState<List<NotificationEntity>>, void> {
  final ProfileRepository profileRepository;

  GetNotificationSettingsUsecase({required this.profileRepository});

  @override
  Future<DataState<List<NotificationEntity>>> call({params}) {
    return profileRepository.getNotificationsSettings();
  }
}
