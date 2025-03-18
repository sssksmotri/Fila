import 'package:equatable/equatable.dart';

class FilterTagEntity extends Equatable {
  final int id;

  const FilterTagEntity({
    required this.id,
  });

  @override
  List<Object?> get props => [
        id,
      ];
}
