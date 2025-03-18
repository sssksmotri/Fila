import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monobox/core/resources/data_state.dart';
import 'package:monobox/features/order/domain/entities/promocode_entity.dart';
import 'package:monobox/features/order/domain/repositories/order_repository.dart';

part 'promocode_event.dart';
part 'promocode_state.dart';
part 'promocode_bloc.freezed.dart';

class PromocodeBloc extends Bloc<PromocodeEvent, PromocodeState> {
  PromocodeBloc(this.repository) : super(const _Initial()) {
    on<_GetPromocode>(_onGetPromocode);
  }

  OrderRepository repository;

  void _onGetPromocode(
    PromocodeEvent event,
    Emitter<PromocodeState> emit,
  ) async {
    try {
      emit(const PromocodeState.loading());

      final dataState = await repository.getPromocode(event.promocode);

      if (dataState is DataSuccess && dataState.data != null) {
        emit(PromocodeState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          PromocodeState.error(
            StateError(dataState.error!.response!.data['error'] ?? ''),
          ),
        );
      }
    } catch (message) {
      emit(
        PromocodeState.error(
          StateError(message.toString()),
        ),
      );
    }
  }
}
