part of 'add_child_form_cubit.dart';

@freezed
class AddChildFormState with _$AddChildFormState {
  const factory AddChildFormState({
    @Default(false) bool nameValid,
    @Default(false) bool birthDateValid,
    @Default(false) bool validForm,
  }) = _AddChildFormState;
}
