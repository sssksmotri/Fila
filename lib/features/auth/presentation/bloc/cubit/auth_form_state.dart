part of 'auth_form_cubit.dart';

@freezed
class AuthFormState with _$AuthFormState {
  const factory AuthFormState({
    @Default(false) bool phoneValid,
    @Default(true) bool acceptLoyality,
    @Default(true) bool acceptUserAgreement,
    @Default(false) bool codeSent,
    String? userPhone,
    @Default(59) int timeCount,
  }) = _AuthFormState;
}
