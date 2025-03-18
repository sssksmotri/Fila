import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../domain/entities/tag_entity.dart';
import '../../../domain/usecases/tags_usecase.dart';

part 'tags_event.dart';
part 'tags_state.dart';
part 'tags_bloc.freezed.dart';

class TagsBloc extends Bloc<TagsEvent, TagsState> {
  TagsBloc(this._usecase) : super(const Initial()) {
    on<_GetTags>(_onGetTags);
  }

  final TagsUsecase _usecase;

  void _onGetTags(
    TagsEvent event,
    Emitter<TagsState> emit,
  ) async {
    try {
      emit(const TagsState.loading());

      final dataState = await _usecase();

      if (dataState is DataSuccess && dataState.data != null) {
        emit(TagsState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          TagsState.error(
            dataState.error?.message ?? '',
          ),
        );
      }
    } catch (message) {
      emit(
        TagsState.error(
          message.toString(),
        ),
      );
    }
  }
}
