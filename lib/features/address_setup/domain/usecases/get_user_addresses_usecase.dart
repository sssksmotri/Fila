import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/address_entity.dart';
import '../repository/address_repository.dart';

class GetUserAddressesUsecase
    implements UseCase<DataState<List<AddressEntity>>, void> {
  final AddressRepository addressRepository;

  GetUserAddressesUsecase({required this.addressRepository});

  @override
  Future<DataState<List<AddressEntity>>> call({params}) {
    return addressRepository.getAddresses();
  }
}
