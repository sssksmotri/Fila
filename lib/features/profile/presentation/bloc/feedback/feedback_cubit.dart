import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_state.dart';
part 'feedback_cubit.freezed.dart';

class FeedbackCubit extends Cubit<FeedbackState> {
  FeedbackCubit() : super(const FeedbackState());

  void addGrade1(int grade) {
    emit(state.copyWith(grade1: grade));
  }

  void addGrade2(int grade) {
    emit(state.copyWith(grade2: grade));
  }

  void addGrade3(int grade) {
    emit(state.copyWith(grade3: grade));
  }

  void addComment(String comment) {
    emit(state.copyWith(comment: comment));
  }

  void addPhoto(File photo) {
    List<File> photos = [];
    state.photos.map((p) => photos.add(p)).toList();

    photos.add(photo);

    emit(state.copyWith(photos: photos));
  }

  void deletePhoto(int index) {
    List<File> photos = [];
    state.photos.map((p) => photos.add(p)).toList();

    photos.removeAt(index);

    emit(state.copyWith(photos: photos));
  }
}
