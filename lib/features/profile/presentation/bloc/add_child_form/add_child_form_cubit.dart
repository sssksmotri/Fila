import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_child_form_state.dart';
part 'add_child_form_cubit.freezed.dart';

class AddChildFormCubit extends Cubit<AddChildFormState> {
  AddChildFormCubit() : super(const AddChildFormState());

  void validName(bool valid) {
    emit(state.copyWith(
      nameValid: valid,
    ));
  }

  void validBirtday(bool valid) {
    emit(state.copyWith(
      birthDateValid: valid,
    ));
  }
}
