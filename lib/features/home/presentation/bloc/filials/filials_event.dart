part of 'filials_bloc.dart';

@freezed
class FilialsEvent with _$FilialsEvent {
  const factory FilialsEvent.getFilials() = _GetFilials;
  const factory FilialsEvent.searchFilials({
    int? cityId,
    String? address,
    double? lat,
    double? lon,
  }) = _SearchFilials;
}
