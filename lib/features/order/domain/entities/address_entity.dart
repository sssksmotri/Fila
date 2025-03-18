import 'package:equatable/equatable.dart';

class AddressEntity extends Equatable {
  final AddressCoordsEntity? coords;
  final String? comment;

  const AddressEntity({
    this.coords,
    this.comment,
  });

  @override
  List<Object?> get props => [
        coords,
        comment,
      ];
}

class AddressCoordsEntity extends Equatable {
  final double lat;
  final double lon;

  const AddressCoordsEntity({
    required this.lat,
    required this.lon,
  });

  @override
  List<Object?> get props => [
        lat,
        lon,
      ];
}
