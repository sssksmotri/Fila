part of 'cities_bloc.dart';

sealed class CitiesEvent {
  const CitiesEvent();
}

class GetCities extends CitiesEvent {
  const GetCities();
}
