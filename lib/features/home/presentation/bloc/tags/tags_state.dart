part of 'tags_bloc.dart';

@freezed
class TagsState with _$TagsState {
  const factory TagsState.initial() = Initial;
  const factory TagsState.loading() = Loading;
  const factory TagsState.success(List<TagEntity> tags) = Success;
  const factory TagsState.error(String message) = ErrorState;
}
