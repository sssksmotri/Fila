import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_address.dart';

part 'address_setup_state.freezed.dart';

@freezed
class AddressSetupState with _$AddressSetupState {
  const factory AddressSetupState({
    UserAddress? address,
    required bool streetConfirm,
  }) = _AddressSetupState;
}
