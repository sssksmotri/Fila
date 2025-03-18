part of 'feedback_cubit.dart';

@freezed
class FeedbackState with _$FeedbackState {
  const factory FeedbackState({
    @Default(0) int grade1,
    @Default(0) int grade2,
    @Default(0) int grade3,
    String? comment,
    @Default([]) List<File> photos,
  }) = _FeedbackState;
}
