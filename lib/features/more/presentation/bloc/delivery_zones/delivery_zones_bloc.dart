import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../domain/entities/delivery_zone_entity.dart';
import '../../../domain/usecases/get_delivery_zone_usecase.dart';

part 'delivery_zones_event.dart';
part 'delivery_zones_state.dart';
part 'delivery_zones_bloc.freezed.dart';

class DeliveryZonesBloc extends Bloc<DeliveryZonesEvent, DeliveryZonesState> {
  DeliveryZonesBloc(this._usecase) : super(const _Initial()) {
    on<_GetZones>(_onGetZones);
  }

  final GetDeliveryZoneUsecase _usecase;

  void _onGetZones(
    DeliveryZonesEvent event,
    Emitter<DeliveryZonesState> emit,
  ) async {
    try {
      emit(const DeliveryZonesState.loading());

      final dataState = await _usecase();

      if (dataState is DataSuccess && dataState.data != null) {
        emit(DeliveryZonesState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          DeliveryZonesState.error(
            dataState.error?.message ?? '',
          ),
        );
      }
    } catch (message) {
      emit(
        DeliveryZonesState.error(
          message.toString(),
        ),
      );
    }
  }
}
