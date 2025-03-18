part of 'gifts_bloc.dart';

@freezed
class GiftsEvent with _$GiftsEvent {
  const factory GiftsEvent.getGifts(OrderCreateEntity order) = _GetGifts;
}
