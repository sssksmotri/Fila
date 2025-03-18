import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/order_details_entity.dart';
import '../repositories/order_repository.dart';

class GetOrderUsecase implements UseCase<DataState<OrderDetailsEntity>?, int?> {
  final OrderRepository orderRepository;

  GetOrderUsecase({required this.orderRepository});

  @override
  Future<DataState<OrderDetailsEntity>> call({params}) {
    return orderRepository.getOrder(params!);
  }
}
