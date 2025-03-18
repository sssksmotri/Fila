import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../domain/entities/geolocate_address_entity.dart';
import '../../../domain/usecases/geolocate_address_usecase.dart';
import '../../../domain/usecases/params/geolocate_address_params.dart';

part 'geolocate_address_event.dart';
part 'geolocate_address_state.dart';

class GeolocateAddressBloc
    extends Bloc<GeolocateAddressEvent, GeolocateAddressState> {
  final GeolocateAddressUsecase _geolocateAddressUsecase;

  GeolocateAddressBloc(this._geolocateAddressUsecase)
      : super(GeolocateAddressInitial()) {
    on<GetGeolocateAddress>(_onGetGeolocateAddress);
    on<ResetGeolocateAddress>(_onResetGeolocateAddress);
  }

  void _onGetGeolocateAddress(
      GetGeolocateAddress event, Emitter<GeolocateAddressState> emit) async {
    final dataState = await _geolocateAddressUsecase(
      params: GeolocateAddressParams(
        lat: event.lat,
        lon: event.lon,
      ),
    );

    if (dataState is DataSuccess && dataState!.data != null) {
      emit(GeolocateAddressDone(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(const GeolocateAddressError());
    }
  }

  void _onResetGeolocateAddress(
      ResetGeolocateAddress event, Emitter<GeolocateAddressState> emit) async {
    emit(GeolocateAddressInitial());
  }
}
