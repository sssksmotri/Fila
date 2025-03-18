import 'package:equatable/equatable.dart';

class GeoSuggestionEntity extends Equatable {
  const GeoSuggestionEntity({
    this.value,
    this.street,
    this.streetType,
    this.house,
    this.block,
    this.flat,
    this.geoLat,
    required this.geoLon,
  });

  final String? value;
  final String? street;
  final String? streetType;
  final String? house;
  final String? block;
  final String? flat;
  final String? geoLat;
  final String? geoLon;

  @override
  List<Object?> get props => [
        value,
        street,
        streetType,
        house,
      ];
}
