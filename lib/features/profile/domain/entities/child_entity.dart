import 'package:equatable/equatable.dart';

class ChildEntity extends Equatable {
  final int id;
  final String name;
  final DateTime birthdate;

  const ChildEntity({
    required this.id,
    required this.name,
    required this.birthdate,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        birthdate,
      ];
}
