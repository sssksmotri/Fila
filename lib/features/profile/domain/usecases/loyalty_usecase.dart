import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/loyalty_entity.dart';
import '../repositories/loyalty_repository.dart';

class LoyaltyUsecase implements UseCase<DataState<List<LoyaltyEntity>>, void> {
  final LoyaltyRepository repository;

  LoyaltyUsecase({required this.repository});

  @override
  Future<DataState<List<LoyaltyEntity>>> call({params}) {
    return repository.loyaltyInfo();
  }
}
