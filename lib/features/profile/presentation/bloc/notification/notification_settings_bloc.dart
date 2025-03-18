import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../domain/entities/notification_entity.dart';
import '../../../domain/entities/notification_item_entity.dart';
import '../../../domain/entities/notification_status_entity.dart';
import '../../../domain/usecases/change_notification_status_usecase.dart';
import '../../../domain/usecases/get_notification_settings_usecase.dart';

part 'notification_settings_event.dart';
part 'notification_settings_state.dart';
part 'notification_settings_bloc.freezed.dart';

class NotificationSettingsBloc
    extends Bloc<NotificationSettingsEvent, NotificationSettingsState> {
  NotificationSettingsBloc(this._getNotificationSettingsUsecase,
      this._changeNotificationStatusUsecase)
      : super(const Initial()) {
    on<_GetNotificationSettings>(_onGetNotificationSettings);
    on<_ChangeNotificationStatus>(_onChangeNotificationStatus);
  }

  final GetNotificationSettingsUsecase _getNotificationSettingsUsecase;
  final ChangeNotificationStatusUsecase _changeNotificationStatusUsecase;

  void _onGetNotificationSettings(
    _GetNotificationSettings event,
    Emitter<NotificationSettingsState> emit,
  ) async {
    try {
      emit(const NotificationSettingsState.loading());

      final dataState = await _getNotificationSettingsUsecase.call();

      if (dataState is DataSuccess && dataState.data != null) {
        emit(NotificationSettingsState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          NotificationSettingsState.error(
            StateError(dataState.error?.message ?? '') as Error,
          ),
        );
      }
    } catch (message) {
      emit(
        NotificationSettingsState.error(
          StateError(message.toString()) as Error,
        ),
      );
    }
  }

  void _onChangeNotificationStatus(
    _ChangeNotificationStatus event,
    Emitter<NotificationSettingsState> emit,
  ) async {
    try {
      final dataState = await _changeNotificationStatusUsecase.call(
        params: NotificationStatusEntity(
          id: event.id,
          status: event.status,
        ),
      );

      if (dataState is DataSuccess &&
          dataState.data != null &&
          state is Success) {
        List<NotificationEntity> notifications = [];
        notifications.addAll((state as Success).notifications);

        notifications.map((notification) {
          final index = notification.items
              .indexWhere((item) => item.id == dataState.data!.id);

          if (index >= 0) {
            notification.items[index] = NotificationItemEntity(
              id: notification.items[index].id,
              title: notification.items[index].title,
              status: dataState.data!.status,
            );
          }

          // notification.items.map((item) {
          //   if (item.id == dataState.data!.id) {
          //     item = NotificationItemEntity(
          //       id: item.id,
          //       title: item.title,
          //       status: dataState.data!.status,
          //     );
          //   }
          // }).toList();
        }).toList();
        emit(NotificationSettingsState.success(notifications));
      }

      if (dataState is DataFailed) {
        emit(
          NotificationSettingsState.error(
            StateError(dataState.error?.message ?? '') as Error,
          ),
        );
      }
    } catch (message) {
      emit(
        NotificationSettingsState.error(
          StateError(message.toString()) as Error,
        ),
      );
    }
  }
}
