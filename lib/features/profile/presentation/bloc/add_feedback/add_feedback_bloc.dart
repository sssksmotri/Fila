import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../domain/entities/add_feedback_entity.dart';
import '../../../domain/usecases/add_order_feedback.dart';

part 'add_feedback_event.dart';
part 'add_feedback_state.dart';
part 'add_feedback_bloc.freezed.dart';

class AddFeedbackBloc extends Bloc<AddFeedbackEvent, AddFeedbackState> {
  final AddOrderFeedbackUsecase _usecase;

  AddFeedbackBloc(this._usecase) : super(const Initial()) {
    on<_AddFeedback>(_onAddFeedback);
  }

  void _onAddFeedback(
    AddFeedbackEvent event,
    Emitter<AddFeedbackState> emit,
  ) async {
    try {
      emit(const AddFeedbackState.loading());

      final dataState = await _usecase.call(params: event.feedback);

      if (dataState is DataSuccess && dataState.data != null) {
        emit(const AddFeedbackState.success());
      }

      if (dataState is DataFailed) {
        emit(
          AddFeedbackState.error(
            StateError(dataState.error?.message ?? ''),
          ),
        );
      }
    } catch (message) {
      emit(
        AddFeedbackState.error(
          StateError(message.toString()),
        ),
      );
    }
  }
}
