import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/basket_offer_entity.dart';
import '../repository/basket_repository.dart';

class RemoveBasketItemUseCase
    implements UseCase<DataState<void>, BasketOfferEntity?> {
  final BasketRepository _basketRepository;

  const RemoveBasketItemUseCase({
    required BasketRepository basketRepository,
  }) : _basketRepository = basketRepository;

  @override
  Future<DataState<void>> call({params}) {
    return _basketRepository.removeBasketItem(params!);
  }
}
