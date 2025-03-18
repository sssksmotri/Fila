import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monobox/features/more/domain/entities/page_entity.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../domain/usecases/get_page_usecase.dart';

part 'pages_event.dart';
part 'pages_state.dart';
part 'pages_bloc.freezed.dart';

class PagesBloc extends Bloc<PagesEvent, PagesState> {
  final GetPageUsecase _usecase;

  PagesBloc(this._usecase) : super(const _Initial()) {
    on<_GetPage>(_onGetPage);
  }

  void _onGetPage(
    PagesEvent event,
    Emitter<PagesState> emit,
  ) async {
    try {
      emit(const PagesState.loading());

      final dataState = await _usecase(params: event.url);

      if (dataState is DataSuccess && dataState.data != null) {
        emit(PagesState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          PagesState.error(
            dataState.error?.message ?? '',
          ),
        );
      }
    } catch (message) {
      emit(
        PagesState.error(
          message.toString(),
        ),
      );
    }
  }
}
