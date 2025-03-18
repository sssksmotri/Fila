import '../../../../core/resources/data_state.dart';
import '../../domain/entities/delivery_entity.dart';
import '../../domain/repositories/delivery_repository.dart';
import '../datasources/remote/delivery_api_service.dart';
import '../models/deliveries_dto.dart';
import 'mappers/delivery_mapper.dart';

class DeliveryRepositoryImpl implements DeliveryRepository {
  final DeliveryApiService service;

  DeliveryRepositoryImpl({required this.service});

  @override
  Future<DataState<List<DeliveryEntity>>?> getDeliveries() async {
    DeliveriesDto deliveries = await service.getDeliveries();

    return DataSuccess(
      DeliveryMapper.toEntities(deliveries),
    );
  }
}
