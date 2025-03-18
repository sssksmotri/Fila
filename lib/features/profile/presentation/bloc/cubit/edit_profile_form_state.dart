part of 'edit_profile_form_cubit.dart';

@freezed
class EditProfileFormState with _$EditProfileFormState {
  const factory EditProfileFormState({
    @Default(false) bool nameValid,
    @Default(false) bool emailValid,
    @Default(false) bool birthDateValid,
    @Default(false) bool validForm,
    @Default(false) bool acceptLoyality,
  }) = _EditProfileFormState;
}
