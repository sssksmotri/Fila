import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monobox/features/address_setup/domain/entities/city_entity.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../../../core/usecase/usecase.dart';

part 'cities_event.dart';
part 'cities_state.dart';

class CitiesBloc extends Bloc<CitiesEvent, CitiesState> {
  final UseCase _citiesOrderUsecase;

  CitiesBloc(this._citiesOrderUsecase) : super(CitiesInitial()) {
    on<GetCities>(_onGetCities);
  }

  void _onGetCities(CitiesEvent event, Emitter<CitiesState> emit) async {
    emit(const CitiesLoading());

    final dataState = await _citiesOrderUsecase();

    if (dataState is DataSuccess && dataState.data != null) {
      emit(CitiesDone(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(const CitiesError());
    }
  }
}
