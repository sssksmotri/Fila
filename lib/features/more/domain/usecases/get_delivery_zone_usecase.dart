import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/delivery_zone_entity.dart';
import '../repository/delivery_zones_repository.dart';

class GetDeliveryZoneUsecase
    implements UseCase<DataState<List<DeliveryZoneEntity>>, void> {
  final DeliveryZonesRepository repository;

  GetDeliveryZoneUsecase({required this.repository});

  @override
  Future<DataState<List<DeliveryZoneEntity>>> call({params}) {
    return repository.getDeliveryZones();
  }
}
