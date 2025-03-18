import 'package:equatable/equatable.dart';

class ShopEntity extends Equatable {
  final int id;
  final int cityId;
  final String address;
  final double lat;
  final double lon;
  final String? openTime;
  final String? waitingTime;
  final List<String>? workTime;
  final String? distance;

  const ShopEntity({
    required this.id,
    required this.cityId,
    required this.address,
    required this.lat,
    required this.lon,
    this.openTime,
    this.workTime,
    this.waitingTime,
    this.distance,
  });

  @override
  List<Object?> get props => [
        id,
        address,
        lat,
        lon,
        openTime,
        waitingTime,
        waitingTime,
        distance,
      ];
}
