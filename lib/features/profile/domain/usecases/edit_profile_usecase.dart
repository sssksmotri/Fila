import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/edit_user_entity.dart';
import '../entities/user_entity.dart';
import '../repositories/profile_repository.dart';

class EditProfileUsecase
    implements UseCase<DataState<UserEntity>, EditUserEntity?> {
  final ProfileRepository profileRepository;

  EditProfileUsecase({required this.profileRepository});

  @override
  Future<DataState<UserEntity>> call({params}) {
    return profileRepository.editProfile(params!);
  }
}
