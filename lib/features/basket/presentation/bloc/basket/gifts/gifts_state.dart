part of 'gifts_bloc.dart';

@freezed
class GiftsState with _$GiftsState {
  const factory GiftsState.initial() = Initial;
  const factory GiftsState.loading() = Loading;
  const factory GiftsState.success(List<ProductEntity> gifts) = Success;
  const factory GiftsState.error(String message) = ErrorState;
}
