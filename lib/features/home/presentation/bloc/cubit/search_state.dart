part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default([]) List<TagEntity> selectedTags,
  }) = _SearchState;
}
