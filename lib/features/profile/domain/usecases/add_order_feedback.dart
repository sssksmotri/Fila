import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/add_feedback_entity.dart';
import '../repositories/profile_repository.dart';

class AddOrderFeedbackUsecase
    implements UseCase<DataState<void>, AddFeedbackEntity?> {
  final ProfileRepository repository;

  AddOrderFeedbackUsecase({required this.repository});

  @override
  Future<DataState<void>> call({params}) {
    return repository.addOrderFeedback(
      params!.orderId,
      params.feedback,
    );
  }
}
