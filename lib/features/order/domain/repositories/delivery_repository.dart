import '../../../../core/resources/data_state.dart';
import '../entities/delivery_entity.dart';

abstract class DeliveryRepository {
  Future<DataState<List<DeliveryEntity>>?> getDeliveries();
}
