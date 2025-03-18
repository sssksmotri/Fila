import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monobox/features/home/domain/entities/coordinates_entity.dart';
import 'package:monobox/features/home/domain/entities/filials_search_request_entity.dart';
import 'package:monobox/features/home/domain/usecases/serach_filials_usecase.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../../more/domain/entities/shop_entity.dart';
import '../../../domain/usecases/filials_usecase.dart';

part 'filials_event.dart';
part 'filials_state.dart';
part 'filials_bloc.freezed.dart';

class FilialsBloc extends Bloc<FilialsEvent, FilialsState> {
  final FilialsUsecase _usecase;
  final SearchFilialsUsecase _searchUsecase;

  FilialsBloc(this._usecase, this._searchUsecase) : super(const _Initial()) {
    on<_GetFilials>(_onGetFilials);
    on<_SearchFilials>(_onSearchFilials);
  }

  void _onGetFilials(
    _GetFilials event,
    Emitter<FilialsState> emit,
  ) async {
    try {
      emit(const FilialsState.loading());

      final dataState = await _usecase();

      if (dataState is DataSuccess && dataState.data != null) {
        emit(FilialsState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          FilialsState.error(
            dataState.error?.message ?? '',
          ),
        );
      }
    } catch (message) {
      emit(
        FilialsState.error(
          message.toString(),
        ),
      );
    }
  }

  void _onSearchFilials(
    _SearchFilials event,
    Emitter<FilialsState> emit,
  ) async {
    try {
      emit(const FilialsState.loading());

      final dataState = await _searchUsecase(
          params: FilialsSearchRequesEntity(
        cityId: event.cityId,
        address: event.address,
        coordinates: event.lat != null && event.lon != null
            ? CoordinatesEntity(
                lat: event.lat!,
                lon: event.lon!,
              )
            : null,
      ));

      if (dataState is DataSuccess && dataState.data != null) {
        emit(FilialsState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          FilialsState.error(
            dataState.error?.message ?? '',
          ),
        );
      }
    } catch (message) {
      emit(
        FilialsState.error(
          message.toString(),
        ),
      );
    }
  }
}
