import 'package:equatable/equatable.dart';

class CustomerEntity extends Equatable {
  final String? phone;
  final String? name;
  final String? surname;
  final String? birthdate;
  final String? email;

  const CustomerEntity({
    this.phone,
    this.name,
    this.surname,
    this.birthdate,
    this.email,
  });

  @override
  List<Object?> get props => [
        phone,
        name,
        surname,
        birthdate,
        email,
      ];
}
