part of 'add_feedback_bloc.dart';

@freezed
class AddFeedbackEvent with _$AddFeedbackEvent {
  const factory AddFeedbackEvent.addFeedback(AddFeedbackEntity feedback) =
      _AddFeedback;
}
