import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/address_create_entity.dart';
import '../entities/address_entity.dart';
import '../repository/address_repository.dart';

class SaveUserAddressesUsecase
    implements UseCase<DataState<AddressEntity>, AddressCreateEntity?> {
  final AddressRepository repository;

  SaveUserAddressesUsecase({required this.repository});

  @override
  Future<DataState<AddressEntity>> call({params}) {
    return repository.addAddress(params!);
  }
}
