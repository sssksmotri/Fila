import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/city_entity.dart';
import '../repository/address_repository.dart';

class CitiesOrderUsecase
    implements UseCase<DataState<List<CityEntity>>?, void> {
  final AddressRepository addressRepository;

  CitiesOrderUsecase({required this.addressRepository});

  @override
  Future<DataState<List<CityEntity>>?> call({params}) {
    return addressRepository.getCityForDelivery();
  }
}
