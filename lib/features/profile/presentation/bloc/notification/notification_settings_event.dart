part of 'notification_settings_bloc.dart';

@freezed
class NotificationSettingsEvent with _$NotificationSettingsEvent {
  const factory NotificationSettingsEvent.getNotificationSettings() =
      _GetNotificationSettings;

  const factory NotificationSettingsEvent.changeNotificationStatus(
      int id, bool status) = _ChangeNotificationStatus;
}
