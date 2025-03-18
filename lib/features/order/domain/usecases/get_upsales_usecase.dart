import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/upsale_entity.dart';
import '../entities/upsale_request_entity.dart';
import '../repositories/order_repository.dart';

class GetUpsalesUsecase
    implements UseCase<DataState<List<UpsaleEntity>>?, UpsaleRequestEntity?> {
  final OrderRepository orderRepository;

  GetUpsalesUsecase({required this.orderRepository});

  @override
  Future<DataState<List<UpsaleEntity>>> call({params}) {
    return orderRepository.getUpsales(params!);
  }
}
