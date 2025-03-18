part of 'action_bloc.dart';

@freezed
class ActionState with _$ActionState {
  const factory ActionState.initial() = _Initial;
  const factory ActionState.loading() = _Loading;
  const factory ActionState.success(ActionEntity action) = _Success;
  const factory ActionState.error(String message) = _ErrorState;
}
