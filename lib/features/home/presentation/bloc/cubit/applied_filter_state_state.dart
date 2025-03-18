part of 'applied_filter_state_cubit.dart';

@freezed
class AppliedFilterStateState with _$AppliedFilterStateState {
  const factory AppliedFilterStateState({
    @Default([]) List<TagEntity> selectedTags,
  }) = _AppliedFilterStateState;
}
