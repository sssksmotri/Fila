import 'package:equatable/equatable.dart';

class UpsaleRequestEntity extends Equatable {
  final List<String> types;

  const UpsaleRequestEntity({
    required this.types,
  });

  @override
  List<Object?> get props => [
        types,
      ];
}
