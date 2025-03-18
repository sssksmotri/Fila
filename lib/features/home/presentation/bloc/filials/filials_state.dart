part of 'filials_bloc.dart';

@freezed
class FilialsState with _$FilialsState {
  const factory FilialsState.initial() = _Initial;
  const factory FilialsState.loading() = _Loading;
  const factory FilialsState.success(List<ShopEntity> shops) = _Success;
  const factory FilialsState.error(String message) = _ErrorState;
}
