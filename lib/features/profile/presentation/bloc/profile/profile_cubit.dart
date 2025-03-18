import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../domain/entities/profile_entity.dart';
import '../../../domain/usecases/profile_usecase.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this._profileUsecase) : super(const ProfileState.initial());

  final ProfileUsecase _profileUsecase;

  void getProfile() async {
    try {
      emit(const ProfileState.loading());

      final dataProfile = await _profileUsecase();

      if (dataProfile is DataSuccess && dataProfile.data != null) {
        emit(
          ProfileState.done(dataProfile.data!),
        );
      }

      if (dataProfile is DataFailed) {
        emit(
          ProfileState.error(
            StateError(dataProfile.error?.message ?? ''),
          ),
        );
      }
    } catch (message) {
      emit(
        ProfileState.error(
          StateError(message.toString()),
        ),
      );
    }
  }

  void clear() async {
    emit(
      const ProfileState.initial(),
    );
  }
}
