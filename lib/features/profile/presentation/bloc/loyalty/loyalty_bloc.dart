import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../domain/entities/loyalty_entity.dart';
import '../../../domain/usecases/loyalty_usecase.dart';

part 'loyalty_event.dart';
part 'loyalty_state.dart';
part 'loyalty_bloc.freezed.dart';

class LoyaltyBloc extends Bloc<LoyaltyEvent, LoyaltyState> {
  final LoyaltyUsecase _usecase;

  LoyaltyBloc(this._usecase) : super(const _Initial()) {
    on<_GetLoyaltyInfo>(_onGetLoyaltyInfo);
  }

  void _onGetLoyaltyInfo(
    LoyaltyEvent event,
    Emitter<LoyaltyState> emit,
  ) async {
    try {
      emit(const LoyaltyState.loading());

      final dataState = await _usecase.call();

      if (dataState is DataSuccess && dataState.data != null) {
        emit(LoyaltyState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          LoyaltyState.error(
            StateError(dataState.error?.message ?? ''),
          ),
        );
      }
    } catch (message) {
      emit(
        LoyaltyState.error(
          StateError(message.toString()),
        ),
      );
    }
  }
}
