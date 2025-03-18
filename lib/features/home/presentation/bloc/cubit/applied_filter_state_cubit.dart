import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monobox/features/home/domain/entities/tag_entity.dart';

part 'applied_filter_state_state.dart';
part 'applied_filter_state_cubit.freezed.dart';

class AppliedFilterStateCubit extends Cubit<AppliedFilterStateState> {
  AppliedFilterStateCubit() : super(const AppliedFilterStateState());

  void selectTag(TagEntity tag) {
    List<TagEntity> tags = [];
    tags.addAll(state.selectedTags);
    tags.add(tag);
    emit(state.copyWith(selectedTags: tags));
  }

  void unselectTag(TagEntity tag) {
    List<TagEntity> tags = [];
    tags.addAll(state.selectedTags);

    tags.removeWhere((t) => t.id == tag.id);

    emit(state.copyWith(selectedTags: tags));
  }

  void unselectAllTags() {
    emit(state.copyWith(selectedTags: []));
  }

  bool isActive(TagEntity tag) {
    bool result = false;
    for (var t in state.selectedTags) {
      if (t.id == tag.id) {
        result = true;
      }
    }

    return result;
  }
}
