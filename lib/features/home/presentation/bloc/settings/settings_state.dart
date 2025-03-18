part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = Initial;
  const factory SettingsState.loading() = Loading;
  const factory SettingsState.success(SettingsEntity settings) = Success;
  const factory SettingsState.error(String message) = ErrorState;
}
