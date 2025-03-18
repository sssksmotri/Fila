import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/tag_entity.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchState());

  void setFilters(List<TagEntity> tags) {
    emit(state.copyWith(selectedTags: tags));
  }

  void clear() {
    emit(state.copyWith(selectedTags: []));
  }
}
