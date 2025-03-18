import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/resources/data_state.dart';
import '../../../../../home/domain/entities/product_entity.dart';
import '../../../../../order/domain/entities/order_create_entity.dart';
import '../../../../../order/domain/usecases/get_gifts_usecase.dart';

part 'gifts_event.dart';
part 'gifts_state.dart';
part 'gifts_bloc.freezed.dart';

class GiftsBloc extends Bloc<GiftsEvent, GiftsState> {
  GiftsBloc(this._getGiftsUsecase) : super(const Initial()) {
    on<_GetGifts>(_onGetGifts);
  }

  final GetGiftsUsecase _getGiftsUsecase;

  void _onGetGifts(
    GiftsEvent event,
    Emitter<GiftsState> emit,
  ) async {
    try {
      emit(const GiftsState.loading());

      final dataState = await _getGiftsUsecase(params: event.order);

      if (dataState is DataSuccess && dataState.data != null) {
        emit(GiftsState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          GiftsState.error(
            dataState.error?.message ?? '',
          ),
        );
      }
    } catch (message) {
      emit(
        GiftsState.error(
          message.toString(),
        ),
      );
    }
  }
}
