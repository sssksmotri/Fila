import 'package:equatable/equatable.dart';

class EditUserEntity extends Equatable {
  final String? name;
  final String? email;
  final DateTime? birthdate;

  const EditUserEntity({
    this.name,
    this.email,
    this.birthdate,
  });

  @override
  List<Object?> get props => [
        name,
        email,
        birthdate,
      ];
}
