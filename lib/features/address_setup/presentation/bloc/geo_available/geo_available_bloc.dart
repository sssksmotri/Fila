import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monobox/core/resources/data_state.dart';
import 'package:monobox/features/address_setup/domain/entities/geo_available_entity.dart';
import 'package:monobox/features/address_setup/domain/usecases/geo_available_usecase.dart';
import 'package:monobox/features/address_setup/domain/usecases/params/geolocate_address_params.dart';

part 'geo_available_event.dart';
part 'geo_available_state.dart';
part 'geo_available_bloc.freezed.dart';

class GeoAvailableBloc extends Bloc<GeoAvailableEvent, GeoAvailableState> {
  GeoAvailableBloc(this._usecase) : super(const Initial()) {
    on<_GetAvailable>(_onGetAvailable);
  }

  final GeoavailableUsecase _usecase;

  void _onGetAvailable(
    GeoAvailableEvent event,
    Emitter<GeoAvailableState> emit,
  ) async {
    try {
      emit(const GeoAvailableState.loading());

      final dataState = await _usecase(
        params: GeolocateAddressParams(
          lat: event.lat,
          lon: event.lon,
        ),
      );

      if (dataState is DataSuccess && dataState.data != null) {
        emit(GeoAvailableState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          GeoAvailableState.error(
            dataState.error?.message ?? '',
          ),
        );
      }
    } catch (message) {
      emit(
        GeoAvailableState.error(
          message.toString(),
        ),
      );
    }
  }
}
