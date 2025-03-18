import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/auth_request_entity.dart';
import '../entities/get_code_status_entity.dart';
import '../repositories/auth_repository.dart';

class GetAuthCodeUseCase
    implements UseCase<DataState<GetCodeStatusEntity>, AuthRequestEntity?> {
  final AuthRepository _authRepository;

  const GetAuthCodeUseCase({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  @override
  Future<DataState<GetCodeStatusEntity>> call({params}) {
    return _authRepository.getCode(params!.phoneNumber);
  }
}
