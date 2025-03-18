part of 'add_child_bloc.dart';

@freezed
class AddChildState with _$AddChildState {
  const factory AddChildState.initial() = Initial;
  const factory AddChildState.loading() = Loading;
  const factory AddChildState.done(ChildEntity child) = Done;
  const factory AddChildState.error(Error error) = ErrorState;
}
