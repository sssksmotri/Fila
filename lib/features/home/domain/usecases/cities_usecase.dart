import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/city_entity.dart';
import '../repository/filials_repository.dart';

class CitiesUsecase implements UseCase<DataState<List<CityEntity>>, void> {
  final FilialsRepository repository;

  CitiesUsecase({required this.repository});

  @override
  Future<DataState<List<CityEntity>>> call({params}) {
    return repository.getCities();
  }
}
