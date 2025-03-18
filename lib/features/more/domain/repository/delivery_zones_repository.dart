import '../../../../core/resources/data_state.dart';
import '../entities/delivery_zone_entity.dart';

abstract class DeliveryZonesRepository {
  Future<DataState<List<DeliveryZoneEntity>>> getDeliveryZones();
}
