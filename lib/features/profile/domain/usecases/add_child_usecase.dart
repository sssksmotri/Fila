import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/add_child_request_entity.dart';
import '../entities/child_entity.dart';
import '../repositories/profile_repository.dart';

class AddChildUsecase
    implements UseCase<DataState<ChildEntity>, AddChildRequestEntity?> {
  final ProfileRepository profileRepository;

  AddChildUsecase({required this.profileRepository});

  @override
  Future<DataState<ChildEntity>> call({params}) {
    return profileRepository.addChild(params!);
  }
}
