part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.done(ProfileEntity profile) = _Done;
  const factory ProfileState.error(Error error) = _Error;
}
