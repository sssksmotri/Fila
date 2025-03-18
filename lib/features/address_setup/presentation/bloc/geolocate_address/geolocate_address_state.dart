part of 'geolocate_address_bloc.dart';

sealed class GeolocateAddressState extends Equatable {
  const GeolocateAddressState({this.geolocateAddress});

  final GeolocateAddressEntity? geolocateAddress;

  @override
  List<Object?> get props => [geolocateAddress];
}

final class GeolocateAddressInitial extends GeolocateAddressState {}

class GeolocateAddressLoading extends GeolocateAddressState {
  const GeolocateAddressLoading();
}

class GeolocateAddressDone extends GeolocateAddressState {
  const GeolocateAddressDone(GeolocateAddressEntity geolocateAddress)
      : super(
          geolocateAddress: geolocateAddress,
        );
}

class GeolocateAddressError extends GeolocateAddressState {
  const GeolocateAddressError();
}
