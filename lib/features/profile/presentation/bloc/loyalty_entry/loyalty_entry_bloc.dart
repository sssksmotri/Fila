import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monobox/core/resources/data_state.dart';
import 'package:monobox/features/profile/domain/entities/loyalty_entry_request_entity.dart';
import 'package:monobox/features/profile/domain/entities/loyalty_entry_response_entity.dart';
import 'package:monobox/features/profile/domain/usecases/loyalty_entry_usecase.dart';

part 'loyalty_entry_event.dart';
part 'loyalty_entry_state.dart';
part 'loyalty_entry_bloc.freezed.dart';

class LoyaltyEntryBloc extends Bloc<LoyaltyEntryEvent, LoyaltyEntryState> {
  final LoyaltyEntryUsecase _usecase;

  LoyaltyEntryBloc(this._usecase) : super(const _Initial()) {
    on<_PostLoyaltyRequest>(_onPostLoyaltyRequest);
  }

  void _onPostLoyaltyRequest(
    LoyaltyEntryEvent event,
    Emitter<LoyaltyEntryState> emit,
  ) async {
    try {
      emit(const LoyaltyEntryState.saving());

      final dataState = await _usecase.call(params: event.request);

      if (dataState is DataSuccess && dataState.data != null) {
        emit(LoyaltyEntryState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          LoyaltyEntryState.error(
            StateError(dataState.error?.message ?? ''),
          ),
        );
      }
    } catch (message) {
      emit(
        LoyaltyEntryState.error(
          StateError(message.toString()),
        ),
      );
    }
  }
}
