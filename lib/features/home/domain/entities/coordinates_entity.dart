import 'package:equatable/equatable.dart';

class CoordinatesEntity extends Equatable {
  const CoordinatesEntity({
    required this.lat,
    required this.lon,
  });

  final double lat;
  final double lon;

  @override
  List<Object?> get props => [
        lat,
        lon,
      ];
}
