import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../domain/entities/city_entity.dart';
import '../../../domain/usecases/cities_usecase.dart';

part 'cities_event.dart';
part 'cities_state.dart';
part 'cities_bloc.freezed.dart';

class CitiesBloc extends Bloc<CitiesEvent, CitiesState> {
  final CitiesUsecase _usecase;

  CitiesBloc(this._usecase) : super(const _Initial()) {
    on<_GetCities>(_onGetCities);
  }

  void _onGetCities(
    CitiesEvent event,
    Emitter<CitiesState> emit,
  ) async {
    try {
      emit(const CitiesState.loading());

      final dataState = await _usecase();

      if (dataState is DataSuccess && dataState.data != null) {
        emit(CitiesState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          CitiesState.error(
            dataState.error?.message ?? '',
          ),
        );
      }
    } catch (message) {
      emit(
        CitiesState.error(
          message.toString(),
        ),
      );
    }
  }
}
