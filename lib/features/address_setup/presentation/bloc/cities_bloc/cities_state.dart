part of 'cities_bloc.dart';

sealed class CitiesState extends Equatable {
  const CitiesState({this.cities});

  final List<CityEntity>? cities;

  @override
  List<Object> get props => [cities!];
}

final class CitiesInitial extends CitiesState {}

class CitiesLoading extends CitiesState {
  const CitiesLoading();
}

class CitiesDone extends CitiesState {
  const CitiesDone(List<CityEntity> cities)
      : super(
          cities: cities,
        );
}

class CitiesError extends CitiesState {
  const CitiesError();
}
