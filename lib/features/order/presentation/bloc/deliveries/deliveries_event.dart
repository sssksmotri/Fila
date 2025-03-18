part of 'deliveries_bloc.dart';

sealed class DeliveriesEvent {
  const DeliveriesEvent();
}

class GetDeliveries extends DeliveriesEvent {
  const GetDeliveries();
}
