import 'package:equatable/equatable.dart';

class ProfileCardEntity extends Equatable {
  final String name;

  const ProfileCardEntity({
    required this.name,
  });

  @override
  List<Object?> get props => [
        name,
      ];
}
