import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/basket_repository.dart';

class RemoveAllBasketItemsUseCase implements UseCase<DataState<void>, void> {
  final BasketRepository _basketRepository;

  const RemoveAllBasketItemsUseCase({
    required BasketRepository basketRepository,
  }) : _basketRepository = basketRepository;

  @override
  Future<DataState<void>> call({params}) {
    return _basketRepository.removeAllBasketItems();
  }
}
