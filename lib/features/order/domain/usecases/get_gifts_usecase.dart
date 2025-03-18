import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../home/domain/entities/product_entity.dart';
import '../entities/order_create_entity.dart';
import '../repositories/order_repository.dart';

class GetGiftsUsecase
    implements UseCase<DataState<List<ProductEntity>>?, OrderCreateEntity?> {
  final OrderRepository orderRepository;

  GetGiftsUsecase({required this.orderRepository});

  @override
  Future<DataState<List<ProductEntity>>> call({params}) {
    return orderRepository.getGifts(params!);
  }
}
