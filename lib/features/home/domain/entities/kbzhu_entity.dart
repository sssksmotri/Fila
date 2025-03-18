import 'package:equatable/equatable.dart';

class KbzhuEntity extends Equatable {
  const KbzhuEntity({
    required this.text,
  });

  final String text;

  @override
  List<Object?> get props => [text];
}
