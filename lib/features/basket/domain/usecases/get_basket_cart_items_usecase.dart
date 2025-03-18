import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/basket_offer_entity.dart';
import '../repository/basket_repository.dart';

class GetAllBasketItemsUseCase
    implements UseCase<DataState<List<BasketOfferEntity>>, void> {
  final BasketRepository _basketRepository;

  const GetAllBasketItemsUseCase({
    required BasketRepository basketRepository,
  }) : _basketRepository = basketRepository;

  @override
  Future<DataState<List<BasketOfferEntity>>> call({params}) {
    return _basketRepository.getAllBasketItems();
  }
}
