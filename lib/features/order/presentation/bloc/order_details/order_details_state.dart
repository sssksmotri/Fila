part of 'order_details_bloc.dart';

@freezed
class OrderDetailsState with _$OrderDetailsState {
  const factory OrderDetailsState.initial() = Initial;
  const factory OrderDetailsState.loading() = Loading;
  const factory OrderDetailsState.success(OrderDetailsEntity order) = Success;
  const factory OrderDetailsState.error(String message) = ErrorState;
}
