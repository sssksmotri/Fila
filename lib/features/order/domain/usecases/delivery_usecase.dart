import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/delivery_entity.dart';
import '../repositories/delivery_repository.dart';

class DeliveryUsecase
    implements UseCase<DataState<List<DeliveryEntity>>?, void> {
  final DeliveryRepository deliveryRepository;

  DeliveryUsecase({required this.deliveryRepository});

  @override
  Future<DataState<List<DeliveryEntity>>?> call({params}) {
    return deliveryRepository.getDeliveries();
  }
}
