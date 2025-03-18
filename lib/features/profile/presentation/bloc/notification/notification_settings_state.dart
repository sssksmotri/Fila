part of 'notification_settings_bloc.dart';

@freezed
class NotificationSettingsState with _$NotificationSettingsState {
  const factory NotificationSettingsState.initial() = Initial;
  const factory NotificationSettingsState.loading() = Loading;
  const factory NotificationSettingsState.success(
      List<NotificationEntity> notifications) = Success;
  const factory NotificationSettingsState.error(Error error) = Error;
}
