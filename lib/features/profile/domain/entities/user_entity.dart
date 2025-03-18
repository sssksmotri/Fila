import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String? name;
  final String? email;
  final String phone;
  final DateTime? birthdate;

  const UserEntity({
    this.name,
    this.email,
    required this.phone,
    this.birthdate,
  });

  @override
  List<Object?> get props => [
        name,
        email,
        phone,
        birthdate,
      ];
}
