part of 'promocode_bloc.dart';

@freezed
class PromocodeEvent with _$PromocodeEvent {
  const factory PromocodeEvent.getPromocode(String promocode) = _GetPromocode;
}
