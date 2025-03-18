import 'package:equatable/equatable.dart';

class ActionEntity extends Equatable {
  final int id;
  final String title;
  final String? content;
  final String? description;
  final String? dopText;
  final String? picture;
  final String? mobilePicture;

  const ActionEntity({
    required this.id,
    required this.title,
    this.content,
    this.description,
    this.dopText,
    this.picture,
    this.mobilePicture,
  });

  @override
  List<Object?> get props => [
        id,
      ];
}
