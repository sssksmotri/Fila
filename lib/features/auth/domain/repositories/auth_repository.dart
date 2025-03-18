import '../../../../core/resources/data_state.dart';
import '../entities/access_token_entity.dart';
import '../entities/get_code_status_entity.dart';

abstract class AuthRepository {
  Future<DataState<GetCodeStatusEntity>> getCode(String phoneNumber);
  Future<DataState<AccessTokenEntity>> loginWithCode(
    String phoneNumber,
    String code,
    String? deviceId,
  );
}
