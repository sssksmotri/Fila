import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../domain/entities/edit_user_entity.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/edit_profile_usecase.dart';

part 'update_profile_event.dart';
part 'update_profile_state.dart';
part 'update_profile_bloc.freezed.dart';

class UpdateProfileBloc extends Bloc<UpdateProfileEvent, UpdateProfileState> {
  UpdateProfileBloc(this._editProfileUsecase) : super(const Initial()) {
    on<_Update>(_onUpdate);
  }

  final EditProfileUsecase _editProfileUsecase;

  void _onUpdate(
    UpdateProfileEvent event,
    Emitter<UpdateProfileState> emit,
  ) async {
    try {
      emit(const UpdateProfileState.loading());

      final dataState = await _editProfileUsecase.call(params: event.editUser);

      if (dataState is DataSuccess && dataState.data != null) {
        emit(UpdateProfileState.done(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          UpdateProfileState.error(
            StateError(dataState.error?.message ?? ''),
          ),
        );
      }
    } catch (message) {
      emit(
        UpdateProfileState.error(
          StateError(message.toString()),
        ),
      );
    }
  }
}
