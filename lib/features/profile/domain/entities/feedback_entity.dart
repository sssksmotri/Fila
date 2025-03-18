import 'dart:io';

import 'package:equatable/equatable.dart';

class FeedbackEntity extends Equatable {
  final int? id;
  final int? grade1;
  final int? grade2;
  final int? grade3;
  final String? comment;
  final List<File> photos;

  const FeedbackEntity({
    this.id,
    this.grade1,
    this.grade2,
    this.grade3,
    this.comment,
    this.photos = const [],
  });

  @override
  List<Object?> get props => [
        id,
        grade1,
        grade2,
        grade3,
        comment,
        photos,
      ];
}
