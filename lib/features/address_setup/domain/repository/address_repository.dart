import '../../../../core/resources/data_state.dart';

import '../entities/address_create_entity.dart';
import '../entities/address_entity.dart';
import '../entities/city_entity.dart';
import '../entities/geolocate_address_entity.dart';

abstract class AddressRepository {
  Future<DataState<GeolocateAddressEntity>?> getGeolocateAddress(
    double lat,
    double lon,
  );

  Future<DataState<List<CityEntity>>?> getCityForDelivery();

  Future<DataState<AddressEntity>> addAddress(AddressCreateEntity address);

  Future<DataState<List<AddressEntity>>> getAddresses();

  Future<DataState<AddressEntity>> editAddress(AddressEntity address);

  Future<DataState<void>> deleteAddress(int id);
}
