import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/access_token_entity.dart';
import '../entities/auth_request_entity.dart';
import '../repositories/auth_repository.dart';

class AuthWithCodeUsecase
    implements UseCase<DataState<AccessTokenEntity>, AuthRequestEntity?> {
  final AuthRepository _authRepository;

  const AuthWithCodeUsecase({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  @override
  Future<DataState<AccessTokenEntity>> call({params}) {
    return _authRepository.loginWithCode(
      params!.phoneNumber,
      params.code!,
      params.deviceId,
    );
  }
}
