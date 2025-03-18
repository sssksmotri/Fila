part of 'orders_list_bloc.dart';

@freezed
class OrdersListEvent with _$OrdersListEvent {
  const factory OrdersListEvent.getOrders() = _GetOrders;
}
