import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monobox/core/resources/data_state.dart';
import 'package:monobox/features/home/domain/entities/action_entity.dart';
import 'package:monobox/features/home/domain/usecases/action_usecase.dart';

part 'action_event.dart';
part 'action_state.dart';
part 'action_bloc.freezed.dart';

class ActionBloc extends Bloc<ActionEvent, ActionState> {
  final ActionUsecase _usecase;

  ActionBloc(this._usecase) : super(const _Initial()) {
    on<_GetAction>(_onGetAction);
  }

  void _onGetAction(
    ActionEvent event,
    Emitter<ActionState> emit,
  ) async {
    try {
      emit(const ActionState.loading());

      final dataState = await _usecase(params: event.id);

      if (dataState is DataSuccess && dataState.data != null) {
        emit(ActionState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          ActionState.error(
            dataState.error?.message ?? '',
          ),
        );
      }
    } catch (message) {
      emit(
        ActionState.error(
          message.toString(),
        ),
      );
    }
  }
}
