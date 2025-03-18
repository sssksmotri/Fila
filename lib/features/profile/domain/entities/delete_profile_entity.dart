import 'package:equatable/equatable.dart';

class DeleteProfileEntity extends Equatable {
  const DeleteProfileEntity({
    required this.status,
  });

  final String status;

  @override
  List<Object?> get props => [
        status,
      ];
}
