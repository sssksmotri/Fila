part of 'deliveries_bloc.dart';

sealed class DeliveriesState extends Equatable {
  const DeliveriesState({this.deliveries});

  final List<DeliveryEntity>? deliveries;

  @override
  List<Object?> get props => [deliveries];
}

final class DeliveriesInitial extends DeliveriesState {}

class DeliveriesLoading extends DeliveriesState {
  const DeliveriesLoading();
}

class DeliveriesDone extends DeliveriesState {
  const DeliveriesDone(List<DeliveryEntity> deliveries)
      : super(
          deliveries: deliveries,
        );
}

class DeliveriesError extends DeliveriesState {
  const DeliveriesError();
}
