import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../domain/entities/settings_entity.dart';
import '../../../domain/usecases/settings_usecase.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc(this._usecase) : super(const Initial()) {
    on<_GetSettings>(_onGetSettings);
  }

  final SettingsUsecase _usecase;

  void _onGetSettings(
    SettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    try {
      emit(const SettingsState.loading());

      final dataState = await _usecase();

      if (dataState is DataSuccess && dataState.data != null) {
        emit(SettingsState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          SettingsState.error(
            dataState.error?.message ?? '',
          ),
        );
      }
    } catch (message) {
      emit(
        SettingsState.error(
          message.toString(),
        ),
      );
    }
  }
}
