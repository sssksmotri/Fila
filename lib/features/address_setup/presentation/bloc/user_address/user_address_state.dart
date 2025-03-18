part of 'user_address_bloc.dart';

@freezed
class UserAddressState with _$UserAddressState {
  const factory UserAddressState.initial() = Initial;
  const factory UserAddressState.loading() = Loading;
  const factory UserAddressState.success(List<AddressEntity> addresses) =
      Success;
  const factory UserAddressState.error(String message) = ErrorState;
}
