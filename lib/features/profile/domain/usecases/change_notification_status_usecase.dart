import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/notification_item_entity.dart';
import '../entities/notification_status_entity.dart';
import '../repositories/profile_repository.dart';

class ChangeNotificationStatusUsecase
    implements
        UseCase<DataState<NotificationItemEntity>, NotificationStatusEntity?> {
  final ProfileRepository profileRepository;

  ChangeNotificationStatusUsecase({required this.profileRepository});

  @override
  Future<DataState<NotificationItemEntity>> call({params}) {
    return profileRepository.changeNotificationStatus(params!);
  }
}
