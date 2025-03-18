import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../../order/domain/entities/gifts_scale_entity.dart';
import '../../../../order/domain/usecases/get_gift_scale_usecase.dart';

part 'gifts_scale_event.dart';
part 'gifts_scale_state.dart';
part 'gifts_scale_bloc.freezed.dart';

class GiftsScaleBloc extends Bloc<GiftsScaleEvent, GiftsScaleState> {
  final GetGiftScaleUsecase _usecase;

  GiftsScaleBloc(this._usecase) : super(const _Initial()) {
    on<_GetGiftsScale>(_onGetGiftsScale);
  }

  void _onGetGiftsScale(
    GiftsScaleEvent event,
    Emitter<GiftsScaleState> emit,
  ) async {
    try {
      emit(const GiftsScaleState.loading());

      final dataState = await _usecase();

      if (dataState is DataSuccess && dataState.data != null) {
        emit(GiftsScaleState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          GiftsScaleState.error(
            dataState.error?.message ?? '',
          ),
        );
      }
    } catch (message) {
      emit(
        GiftsScaleState.error(
          message.toString(),
        ),
      );
    }
  }
}
