part of 'orders_list_bloc.dart';

@freezed
class OrdersListState with _$OrdersListState {
  const factory OrdersListState.initial() = Initial;
  const factory OrdersListState.loading() = Loading;
  const factory OrdersListState.success(List<OrderEntity> orders) = Success;
  const factory OrdersListState.error(String message) = ErrorState;
}
