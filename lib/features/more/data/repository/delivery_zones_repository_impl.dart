import 'package:dio/dio.dart';
import 'package:monobox/core/resources/data_state.dart';

import 'package:monobox/features/more/domain/entities/delivery_zone_entity.dart';

import '../../domain/repository/delivery_zones_repository.dart';
import '../data_source/remote/pages_api_service.dart';
import '../models/delivery_zone_dto.dart';

class DeliveryZonesRepositoryImpl implements DeliveryZonesRepository {
  final PagesApiService service;

  DeliveryZonesRepositoryImpl({required this.service});

  @override
  Future<DataState<List<DeliveryZoneEntity>>> getDeliveryZones() async {
    try {
      List<DeliveryZoneDto> zones = await service.getDeliveryZones();

      return DataSuccess([
        ...zones.map((zone) => DeliveryZoneEntity(
              id: zone.id,
              title: zone.title,
              fill: zone.fill,
              fillOpacity: zone.fillOpacity,
              stroke: zone.stroke,
              polygon: zone.polygon,
              price: zone.price,
            ))
      ]);
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
