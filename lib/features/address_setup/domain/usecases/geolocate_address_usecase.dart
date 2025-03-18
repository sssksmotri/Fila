import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/geolocate_address_entity.dart';
import '../repository/address_repository.dart';
import 'params/geolocate_address_params.dart';

class GeolocateAddressUsecase
    implements
        UseCase<DataState<GeolocateAddressEntity>?, GeolocateAddressParams> {
  final AddressRepository addressRepository;

  GeolocateAddressUsecase({required this.addressRepository});

  @override
  Future<DataState<GeolocateAddressEntity>?> call(
      {GeolocateAddressParams? params}) {
    return addressRepository.getGeolocateAddress(params!.lat, params.lon);
  }
}
