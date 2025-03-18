import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/address_repository.dart';

class DeleteUserAddressesUsecase implements UseCase<DataState<void>, int?> {
  final AddressRepository repository;

  DeleteUserAddressesUsecase({required this.repository});

  @override
  Future<DataState<void>> call({params}) {
    return repository.deleteAddress(params!);
  }
}
