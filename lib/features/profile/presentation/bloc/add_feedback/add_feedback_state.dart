part of 'add_feedback_bloc.dart';

@freezed
class AddFeedbackState with _$AddFeedbackState {
  const factory AddFeedbackState.initial() = Initial;
  const factory AddFeedbackState.loading() = Loading;
  const factory AddFeedbackState.success() = Success;
  const factory AddFeedbackState.error(Error error) = ErrorState;
}
