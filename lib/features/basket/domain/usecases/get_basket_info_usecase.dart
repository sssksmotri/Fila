import 'package:monobox/features/basket/domain/entities/basket_request.dart';

import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/basket_repository.dart';

class GetBasketInfoUsecase implements UseCase<DataState<void>, BasketRequest?> {
  final BasketRepository _basketRepository;

  const GetBasketInfoUsecase({
    required BasketRepository basketRepository,
  }) : _basketRepository = basketRepository;

  @override
  Future<DataState<void>> call({params}) {
    return _basketRepository.getBasketInfo(params!.baket, params.deliveryId);
  }
}
