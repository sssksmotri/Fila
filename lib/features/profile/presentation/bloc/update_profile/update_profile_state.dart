part of 'update_profile_bloc.dart';

@freezed
class UpdateProfileState with _$UpdateProfileState {
  const factory UpdateProfileState.initial() = Initial;
  const factory UpdateProfileState.loading() = Loading;
  const factory UpdateProfileState.done(UserEntity user) = Done;
  const factory UpdateProfileState.error(Error error) = ErrorState;
}
