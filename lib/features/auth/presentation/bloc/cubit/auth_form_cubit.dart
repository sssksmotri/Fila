import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_form_state.dart';
part 'auth_form_cubit.freezed.dart';

class AuthFormCubit extends Cubit<AuthFormState> {
  AuthFormCubit() : super(const AuthFormState());

  Timer? _timer;

  void validPhone(bool valid) {
    emit(state.copyWith(
      phoneValid: valid,
    ));
  }

  void acceptLoyality(bool accept) {
    emit(state.copyWith(
      acceptLoyality: accept,
    ));
  }

  void acceptUserAgreement(bool accept) {
    emit(state.copyWith(
      acceptUserAgreement: accept,
    ));
  }

  void codeSent(bool sent) {
    emit(state.copyWith(
      codeSent: sent,
    ));
  }

  void setTimeCount(int val) {
    emit(state.copyWith(
      timeCount: val,
    ));
  }

  void setUserPhone(String? phone) {
    emit(state.copyWith(
      userPhone: phone != null ? '+7 $phone' : null,
    ));
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (_) {
        if (state.timeCount == 0) {
          _timer!.cancel();
          //_timer!.cancel();
        } else {
          setTimeCount(state.timeCount - 1);
        }
      },
    );
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
