part of 'user_address_bloc.dart';

@freezed
class UserAddressEvent with _$UserAddressEvent {
  const factory UserAddressEvent.getAddresses() = _GetAddresses;
}
