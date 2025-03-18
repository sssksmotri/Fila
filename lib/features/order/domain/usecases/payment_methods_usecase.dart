import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/payment_method_entity.dart';
import '../repositories/payment_repository.dart';

class PaymentMethodsUsecase
    implements UseCase<DataState<List<PaymentMethodEntity>>?, void> {
  final PaymentRepository paymentRepository;

  PaymentMethodsUsecase({required this.paymentRepository});

  @override
  Future<DataState<List<PaymentMethodEntity>>?> call({params}) {
    return paymentRepository.getPaymentMethods();
  }
}
