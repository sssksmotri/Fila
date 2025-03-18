import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/resources/data_state.dart';
import '../../../../../order/domain/entities/upsale_entity.dart';
import '../../../../../order/domain/entities/upsale_request_entity.dart';
import '../../../../../order/domain/usecases/get_upsales_usecase.dart';

part 'upsales_event.dart';
part 'upsales_state.dart';
part 'upsales_bloc.freezed.dart';

class UpsalesBloc extends Bloc<UpsalesEvent, UpsalesState> {
  UpsalesBloc(this._getUpsalesUsecase) : super(const _Initial()) {
    on<_GetUpsales>(_onGetUpsales);
  }

  final GetUpsalesUsecase _getUpsalesUsecase;

  void _onGetUpsales(
    _GetUpsales event,
    Emitter<UpsalesState> emit,
  ) async {
    try {
      emit(const UpsalesState.loading());

      final dataState = await _getUpsalesUsecase(params: event.request);

      if (dataState is DataSuccess && dataState.data != null) {
        emit(UpsalesState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          UpsalesState.error(
            dataState.error?.message ?? '',
          ),
        );
      }
    } catch (message) {
      emit(
        UpsalesState.error(
          message.toString(),
        ),
      );
    }
  }
}
