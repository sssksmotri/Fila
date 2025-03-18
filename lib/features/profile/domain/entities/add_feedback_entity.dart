import 'package:equatable/equatable.dart';

import 'feedback_entity.dart';

class AddFeedbackEntity extends Equatable {
  final int orderId;
  final FeedbackEntity feedback;

  const AddFeedbackEntity({
    required this.orderId,
    required this.feedback,
  });

  @override
  List<Object?> get props => [
        orderId,
        feedback,
      ];
}
