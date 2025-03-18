import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monobox/features/address_setup/domain/usecases/delete_useraddress_usecase.dart';
import 'package:monobox/features/address_setup/domain/usecases/edit_useraddress_usecase.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../domain/entities/address_create_entity.dart';
import '../../../domain/entities/address_entity.dart';
import '../../../domain/usecases/save_useraddress_usecase.dart';

part 'create_address_event.dart';
part 'create_address_state.dart';
part 'create_address_bloc.freezed.dart';

class CreateAddressBloc extends Bloc<CreateAddressEvent, CreateAddressState> {
  final SaveUserAddressesUsecase _saveUsecase;
  final DeleteUserAddressesUsecase _deleteUsecase;
  final EditUserAddressesUsecase _editUsecase;

  CreateAddressBloc({
    required SaveUserAddressesUsecase saveUserAddressesUsecase,
    required DeleteUserAddressesUsecase deleteUserAddressesUsecase,
    required EditUserAddressesUsecase editUserAddressesUsecase,
  })  : _saveUsecase = saveUserAddressesUsecase,
        _deleteUsecase = deleteUserAddressesUsecase,
        _editUsecase = editUserAddressesUsecase,
        super(
          const _Initial(),
        ) {
    on<_AddAddress>(_onAddAddress);
    on<_DeleteAddress>(_onDeleteAddress);
    on<_EditAddress>(_onEditAddress);
  }

  void _onAddAddress(
    _AddAddress event,
    Emitter<CreateAddressState> emit,
  ) async {
    try {
      emit(const CreateAddressState.saving());

      final dataState = await _saveUsecase(params: event.address);

      if (dataState is DataSuccess && dataState.data != null) {
        emit(CreateAddressState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          CreateAddressState.error(
            dataState.error?.message ?? '',
          ),
        );
      }
    } catch (message) {
      emit(
        CreateAddressState.error(
          message.toString(),
        ),
      );
    }
  }

  void _onDeleteAddress(
    _DeleteAddress event,
    Emitter<CreateAddressState> emit,
  ) async {
    try {
      emit(const CreateAddressState.saving());

      final dataState = await _deleteUsecase(params: event.addressId);

      if (dataState is DataSuccess) {
        emit(const CreateAddressState.deleted());
      }

      if (dataState is DataFailed) {
        emit(
          CreateAddressState.error(
            dataState.error?.message ?? '',
          ),
        );
      }
    } catch (message) {
      emit(
        CreateAddressState.error(
          message.toString(),
        ),
      );
    }
  }

  void _onEditAddress(
    _EditAddress event,
    Emitter<CreateAddressState> emit,
  ) async {
    try {
      emit(const CreateAddressState.saving());

      final dataState = await _editUsecase(params: event.address);

      if (dataState is DataSuccess && dataState.data != null) {
        emit(CreateAddressState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          CreateAddressState.error(
            dataState.error?.message ?? '',
          ),
        );
      }
    } catch (message) {
      emit(
        CreateAddressState.error(
          message.toString(),
        ),
      );
    }
  }
}
