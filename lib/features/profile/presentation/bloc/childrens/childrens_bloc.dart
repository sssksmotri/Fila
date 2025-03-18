import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monobox/features/profile/domain/entities/child_entity.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../domain/usecases/childrens_usecase.dart';

part 'childrens_event.dart';
part 'childrens_state.dart';
part 'childrens_bloc.freezed.dart';

class ChildrensBloc extends Bloc<ChildrensEvent, ChildrensState> {
  final ChildrensUsecase _childrensUsecase;

  ChildrensBloc(this._childrensUsecase) : super(const _Initial()) {
    on<_LoadChildrens>(_onLoadChildrens);
  }

  void _onLoadChildrens(
    ChildrensEvent event,
    Emitter<ChildrensState> emit,
  ) async {
    try {
      emit(const ChildrensState.loading());

      final dataState = await _childrensUsecase.call();

      if (dataState is DataSuccess && dataState.data != null) {
        emit(ChildrensState.done(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          ChildrensState.error(
            StateError(dataState.error?.message ?? ''),
          ),
        );
      }
    } catch (message) {
      emit(
        ChildrensState.error(
          StateError(message.toString()),
        ),
      );
    }
  }
}
