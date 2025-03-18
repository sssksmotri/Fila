import 'package:equatable/equatable.dart';

class PromocodeEntity extends Equatable {
  final String code;
  final String? message;

  const PromocodeEntity({
    required this.code,
    this.message,
  });

  @override
  List<Object?> get props => [
        code,
        message,
      ];
}
