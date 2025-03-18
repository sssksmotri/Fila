import 'package:equatable/equatable.dart';

class ProfileChildEntity extends Equatable {
  final int id;
  final String? name;
  final DateTime? birthdate;

  const ProfileChildEntity({
    required this.id,
    this.name,
    this.birthdate,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        birthdate,
      ];
}
