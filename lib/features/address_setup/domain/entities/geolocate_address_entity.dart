import 'package:equatable/equatable.dart';

class GeolocateAddressEntity extends Equatable {
  final String? value;
  final String? city;
  final String? street;
  final String? street2;
  final String? house;
  final double? lat;
  final double? lon;

  const GeolocateAddressEntity({
    this.value,
    this.city,
    this.street,
    this.street2,
    this.house,
    this.lat,
    this.lon,
  });

  @override
  List<Object?> get props => [
        value,
        city,
        house,
        street,
        street2,
        lat,
        lon,
      ];
}
