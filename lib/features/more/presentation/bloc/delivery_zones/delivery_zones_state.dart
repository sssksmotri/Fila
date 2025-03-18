part of 'delivery_zones_bloc.dart';

@freezed
class DeliveryZonesState with _$DeliveryZonesState {
  const factory DeliveryZonesState.initial() = _Initial;
  const factory DeliveryZonesState.loading() = _Loading;
  const factory DeliveryZonesState.success(List<DeliveryZoneEntity> zones) =
      _Success;
  const factory DeliveryZonesState.error(String message) = _ErrorState;
}
