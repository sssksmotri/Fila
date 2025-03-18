part of 'upsales_bloc.dart';

@freezed
class UpsalesState with _$UpsalesState {
  const factory UpsalesState.initial() = _Initial;
  const factory UpsalesState.loading() = _Loading;
  const factory UpsalesState.success(List<UpsaleEntity> upsales) = _Success;
  const factory UpsalesState.error(String message) = _ErrorState;
}
