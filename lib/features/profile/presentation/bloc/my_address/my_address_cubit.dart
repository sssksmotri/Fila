import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monobox/features/address_setup/domain/entities/address_entity.dart';

part 'my_address_state.dart';
part 'my_address_cubit.freezed.dart';

class MyAddressCubit extends Cubit<MyAddressState> {
  final AddressEntity? cuttentAddress;
  MyAddressCubit({
    this.cuttentAddress,
  }) : super(MyAddressState(cuttentAddress: cuttentAddress));

  void setCuttentAddress(AddressEntity cuttentAddress) {
    emit(state.copyWith(cuttentAddress: cuttentAddress));
  }
}
