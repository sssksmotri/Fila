import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../domain/entities/payment_method_entity.dart';

part 'payment_methods_event.dart';
part 'payment_methods_state.dart';

class PaymentMethodsBloc
    extends Bloc<PaymentMethodsEvent, PaymentMethodsState> {
  final UseCase _paymentMethodsUsecase;

  PaymentMethodsBloc(this._paymentMethodsUsecase)
      : super(PaymentMethodsInitial()) {
    on<GetPaymentMethods>(_onGetPaymentMethods);
  }

  void _onGetPaymentMethods(
      PaymentMethodsEvent event, Emitter<PaymentMethodsState> emit) async {
    emit(const PaymentMethodsLoading());

    final DataState<List<PaymentMethodEntity>>? dataState =
        await _paymentMethodsUsecase();

    if (dataState is DataSuccess && dataState?.data != null) {
      emit(PaymentMethodsDone(dataState!.data ?? []));
    }

    if (dataState is DataFailed) {
      emit(const PaymentMethodsError());
    }
  }
}
