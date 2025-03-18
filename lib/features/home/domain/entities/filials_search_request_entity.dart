import 'package:equatable/equatable.dart';
import 'package:monobox/features/home/domain/entities/coordinates_entity.dart';

class FilialsSearchRequesEntity extends Equatable {
  const FilialsSearchRequesEntity({
    this.cityId,
    this.address,
    this.coordinates,
  });

  final int? cityId;
  final String? address;
  final CoordinatesEntity? coordinates;

  @override
  List<Object?> get props => [
        cityId,
        address,
        coordinates,
      ];
}
