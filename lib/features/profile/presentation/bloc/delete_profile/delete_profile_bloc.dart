import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monobox/core/resources/data_state.dart';
import 'package:monobox/features/profile/domain/entities/delete_profile_entity.dart';
import 'package:monobox/features/profile/domain/usecases/delete_profile_usecase.dart';

part 'delete_profile_event.dart';
part 'delete_profile_state.dart';
part 'delete_profile_bloc.freezed.dart';

class DeleteProfileBloc extends Bloc<DeleteProfileEvent, DeleteProfileState> {
  DeleteProfileBloc(this._deleteProfileUsecase) : super(const _Initial()) {
    on<_Delete>(_onDelete);
  }

  final DeleteProfileUsecase _deleteProfileUsecase;

  void _onDelete(
    DeleteProfileEvent event,
    Emitter<DeleteProfileState> emit,
  ) async {
    try {
      emit(const DeleteProfileState.deleting());

      final dataState = await _deleteProfileUsecase.call();

      if (dataState is DataSuccess && dataState.data != null) {
        emit(DeleteProfileState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          DeleteProfileState.error(
            StateError(dataState.error?.message ?? ''),
          ),
        );
      }
    } catch (message) {
      emit(
        DeleteProfileState.error(
          StateError(message.toString()),
        ),
      );
    }
  }
}
