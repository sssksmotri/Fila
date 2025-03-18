import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../domain/entities/banner_entity.dart';

part 'banners_event.dart';
part 'banners_state.dart';

class BannersBloc extends Bloc<BannersEvent, BannersState> {
  BannersBloc(this._bannersUsecase) : super(BannersInitial()) {
    on<GetBanners>(_onGetBanners);
  }

  final UseCase _bannersUsecase;

  void _onGetBanners(BannersEvent event, Emitter<BannersState> emit) async {
    emit(const BannersLoading());

    final dataState = await _bannersUsecase();

    if (dataState is DataSuccess && dataState.data != null) {
      emit(BannersDone(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(const BannersError());
    }
  }
}
