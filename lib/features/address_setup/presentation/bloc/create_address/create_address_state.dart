part of 'create_address_bloc.dart';

@freezed
class CreateAddressState with _$CreateAddressState {
  const factory CreateAddressState.initial() = _Initial;
  const factory CreateAddressState.saving() = _Saving;
  const factory CreateAddressState.success(AddressEntity address) = _Success;
  const factory CreateAddressState.deleted() = _Deleted;
  const factory CreateAddressState.error(String message) = _ErrorState;
}
