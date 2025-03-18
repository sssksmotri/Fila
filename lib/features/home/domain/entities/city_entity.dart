import 'package:equatable/equatable.dart';

class CityEntity extends Equatable {
  final int id;
  final String name;
  final bool isDefault;

  const CityEntity({
    required this.id,
    required this.name,
    this.isDefault = false,
  });

  @override
  List<Object?> get props => [
        id,
      ];
}
