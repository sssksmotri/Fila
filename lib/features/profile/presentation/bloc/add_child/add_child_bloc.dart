import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monobox/features/profile/domain/entities/child_entity.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../domain/entities/add_child_request_entity.dart';
import '../../../domain/usecases/add_child_usecase.dart';

part 'add_child_event.dart';
part 'add_child_state.dart';
part 'add_child_bloc.freezed.dart';

class AddChildBloc extends Bloc<AddChildEvent, AddChildState> {
  final AddChildUsecase _addChildUsecase;

  AddChildBloc(this._addChildUsecase) : super(const Initial()) {
    on<_Add>(_onAdd);
  }

  void _onAdd(
    AddChildEvent event,
    Emitter<AddChildState> emit,
  ) async {
    try {
      emit(const AddChildState.loading());

      final dataState =
          await _addChildUsecase.call(params: event.addChildRequest);

      if (dataState is DataSuccess && dataState.data != null) {
        emit(AddChildState.done(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          AddChildState.error(
            StateError(dataState.error?.message ?? ''),
          ),
        );
      }
    } catch (message) {
      emit(
        AddChildState.error(
          StateError(message.toString()),
        ),
      );
    }
  }
}
