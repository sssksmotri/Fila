part of 'action_bloc.dart';

@freezed
class ActionEvent with _$ActionEvent {
  const factory ActionEvent.getAction(int id) = _GetAction;
}
