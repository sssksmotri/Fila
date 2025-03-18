import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../more/domain/entities/shop_entity.dart';
import '../repository/filials_repository.dart';

class FilialsUsecase implements UseCase<DataState<List<ShopEntity>>, void> {
  final FilialsRepository repository;

  FilialsUsecase({required this.repository});

  @override
  Future<DataState<List<ShopEntity>>> call({params}) {
    return repository.getFilials();
  }
}
