import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/order_created_entity.dart';
import '../entities/order_create_entity.dart';
import '../repositories/order_repository.dart';

class CreateOrderUsecase
    implements UseCase<DataState<OrderCreatedEntity>?, OrderCreateEntity?> {
  final OrderRepository orderRepository;

  CreateOrderUsecase({required this.orderRepository});

  @override
  Future<DataState<OrderCreatedEntity>?> call({params}) {
    return orderRepository.createOrder(params!);
  }
}
