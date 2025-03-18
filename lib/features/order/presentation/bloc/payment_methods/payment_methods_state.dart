part of 'payment_methods_bloc.dart';

sealed class PaymentMethodsState extends Equatable {
  const PaymentMethodsState({this.paymentMethods});

  final List<PaymentMethodEntity>? paymentMethods;

  @override
  List<Object?> get props => [paymentMethods];
}

final class PaymentMethodsInitial extends PaymentMethodsState {}

class PaymentMethodsLoading extends PaymentMethodsState {
  const PaymentMethodsLoading();
}

class PaymentMethodsDone extends PaymentMethodsState {
  const PaymentMethodsDone(List<PaymentMethodEntity> paymentMethods)
      : super(
          paymentMethods: paymentMethods,
        );
}

class PaymentMethodsError extends PaymentMethodsState {
  const PaymentMethodsError();
}
