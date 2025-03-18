import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monobox/core/firebase/app_messaging.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../domain/entities/access_token_entity.dart';
import '../../../domain/entities/auth_request_entity.dart';
import '../../../domain/entities/get_code_status_entity.dart';
import '../../../domain/usecases/auth_with_code_usecase.dart';
import '../../../domain/usecases/get_auth_code_usecase.dart';

part 'send_code_event.dart';
part 'send_code_state.dart';

class SendCodeBloc extends Bloc<SendCodeEvent, SendCodeState> {
  SendCodeBloc({
    required GetAuthCodeUseCase getAuthCodeUseCase,
    required AuthWithCodeUsecase authWithCodeUsecase,
  })  : _getAuthCodeUseCase = getAuthCodeUseCase,
        _authWithCodeUsecase = authWithCodeUsecase,
        super(SendCodeInitial()) {
    on<RequestCode>(_onRequestCode);
    on<Login>(_onLogin);
  }

  final GetAuthCodeUseCase _getAuthCodeUseCase;
  final AuthWithCodeUsecase _authWithCodeUsecase;

  void _onRequestCode(RequestCode event, Emitter<SendCodeState> emit) async {
    emit(SendCodeSending());

    final String originPhone = event.phone;
    String phone = originPhone.replaceAll('-', '');
    phone = phone.replaceAll(' ', '');
    phone = phone.replaceAll('(', '');
    phone = phone.replaceAll(')', '');
    phone = '7$phone';

    final dataState = await _getAuthCodeUseCase(
      params: AuthRequestEntity(
        phoneNumber: phone,
      ),
    );

    if (dataState is DataSuccess && dataState.data != null) {
      emit(AuthSentCode(getCodeStatusEntity: dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(AuthFailure(message: dataState.error!.message ?? 'Some Error'));
    }
  }

  void _onLogin(Login event, Emitter<SendCodeState> emit) async {
    emit(SendCodeSending());

    final String originPhone = event.phone;
    String phone = originPhone.replaceAll('-', '');
    phone = phone.replaceAll(' ', '');
    phone = phone.replaceAll('(', '');
    phone = phone.replaceAll(')', '');
    //phone = '7$phone';
    phone = phone.replaceAll('+', '');

    final dataState = await _authWithCodeUsecase(
      params: AuthRequestEntity(
        phoneNumber: phone,
        code: event.code,
        deviceId: AppMessaging().deviceToken,
      ),
    );

    if (dataState is DataSuccess && dataState.data != null) {
      emit(
        RecivedToken(accessTokenEntity: dataState.data!),
      );
    }

    if (dataState is DataFailed) {
      emit(AuthCheckCodeFailure(message: dataState.error!.message ?? ''));
    }
  }
}
