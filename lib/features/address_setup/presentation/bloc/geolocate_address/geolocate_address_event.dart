part of 'geolocate_address_bloc.dart';

sealed class GeolocateAddressEvent {
  const GeolocateAddressEvent();
}

class GetGeolocateAddress extends GeolocateAddressEvent {
  final double lat;
  final double lon;
  const GetGeolocateAddress({
    required this.lat,
    required this.lon,
  });
}

class ResetGeolocateAddress extends GeolocateAddressEvent {}
