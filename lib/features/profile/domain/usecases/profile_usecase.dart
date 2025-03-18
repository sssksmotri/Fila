import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/profile_entity.dart';
import '../repositories/profile_repository.dart';

class ProfileUsecase implements UseCase<DataState<ProfileEntity>, void> {
  final ProfileRepository profileRepository;

  ProfileUsecase({required this.profileRepository});

  @override
  Future<DataState<ProfileEntity>> call({params}) {
    return profileRepository.getProfile();
  }
}
