import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../domain/entities/address_entity.dart';
import '../../../domain/usecases/get_user_addresses_usecase.dart';

part 'user_address_event.dart';
part 'user_address_state.dart';
part 'user_address_bloc.freezed.dart';

class UserAddressBloc extends Bloc<UserAddressEvent, UserAddressState> {
  UserAddressBloc(this._usecase) : super(const Initial()) {
    on<_GetAddresses>(_onGetAddresses);
  }

  final GetUserAddressesUsecase _usecase;

  void _onGetAddresses(
    UserAddressEvent event,
    Emitter<UserAddressState> emit,
  ) async {
    try {
      emit(const UserAddressState.loading());

      final dataState = await _usecase();

      if (dataState is DataSuccess && dataState.data != null) {
        emit(UserAddressState.success(dataState.data!));
      }

      if (dataState is DataFailed) {
        emit(
          UserAddressState.error(
            dataState.error?.message ?? '',
          ),
        );
      }
    } catch (message) {
      emit(
        UserAddressState.error(
          message.toString(),
        ),
      );
    }
  }
}
