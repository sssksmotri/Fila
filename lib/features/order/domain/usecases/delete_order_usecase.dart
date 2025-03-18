import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/order_repository.dart';

class DeleteOrderUsecase implements UseCase<DataState<void>?, int?> {
  final OrderRepository orderRepository;

  DeleteOrderUsecase({required this.orderRepository});

  @override
  Future<DataState<void>?> call({params}) {
    return orderRepository.deleteOrder(params!);
  }
}
