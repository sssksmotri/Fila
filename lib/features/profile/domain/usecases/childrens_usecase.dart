import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/child_entity.dart';
import '../repositories/profile_repository.dart';

class ChildrensUsecase implements UseCase<DataState<List<ChildEntity>>, void> {
  final ProfileRepository profileRepository;

  ChildrensUsecase({required this.profileRepository});

  @override
  Future<DataState<List<ChildEntity>>> call({params}) {
    return profileRepository.getChildren();
  }
}
