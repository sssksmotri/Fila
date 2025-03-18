part of 'payment_methods_bloc.dart';

sealed class PaymentMethodsEvent {
  const PaymentMethodsEvent();
}

class GetPaymentMethods extends PaymentMethodsEvent {
  const GetPaymentMethods();
}
