import 'package:equatable/equatable.dart';

class CityEntity extends Equatable {
  final String? name;
  final String? kladr;

  const CityEntity({
    this.name,
    this.kladr,
  });

  @override
  List<Object?> get props => [
        name,
        kladr,
      ];
}
