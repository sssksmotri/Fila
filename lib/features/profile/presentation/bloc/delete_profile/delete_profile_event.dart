part of 'delete_profile_bloc.dart';

@freezed
class DeleteProfileEvent with _$DeleteProfileEvent {
  const factory DeleteProfileEvent.delete() = _Delete;
}
