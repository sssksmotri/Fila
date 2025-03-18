part of 'cities_bloc.dart';

@freezed
class CitiesState with _$CitiesState {
  const factory CitiesState.initial() = _Initial;
  const factory CitiesState.loading() = _Loading;
  const factory CitiesState.success(List<CityEntity> cities) = _Success;
  const factory CitiesState.error(String message) = _ErrorState;
}
