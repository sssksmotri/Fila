import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/order_entity.dart';
import '../repositories/order_repository.dart';

class GetOrdersUsecase implements UseCase<DataState<List<OrderEntity>>?, void> {
  final OrderRepository orderRepository;

  GetOrdersUsecase({required this.orderRepository});

  @override
  Future<DataState<List<OrderEntity>>> call({params}) {
    return orderRepository.getOrders();
  }
}
