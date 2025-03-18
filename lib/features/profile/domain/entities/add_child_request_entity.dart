import 'package:equatable/equatable.dart';

class AddChildRequestEntity extends Equatable {
  final String name;
  final DateTime birthdate;

  const AddChildRequestEntity({
    required this.name,
    required this.birthdate,
  });

  @override
  List<Object?> get props => [
        name,
        birthdate,
      ];
}
