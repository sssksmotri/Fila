part of 'geo_suggestion_cubit.dart';

@freezed
class GeoSuggestionState with _$GeoSuggestionState {
  const factory GeoSuggestionState({
    @Default([]) List<GeoSuggestionEntity> suggestions,
  }) = _GeoSuggestionState;
}
