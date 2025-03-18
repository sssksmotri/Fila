import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../domain/entities/collection_entity.dart';

part 'collections_event.dart';
part 'collections_state.dart';

class CollectionsBloc extends Bloc<CollectionsEvent, CollectionsState> {
  final UseCase _collectionsUsecase;

  CollectionsBloc(this._collectionsUsecase) : super(CollectionsInitial()) {
    on<GetCollections>(_onGetCollections);
  }

  void _onGetCollections(
      CollectionsEvent event, Emitter<CollectionsState> emit) async {
    emit(const CollectionsLoading());

    final dataState = await _collectionsUsecase();

    if (dataState is DataSuccess && dataState.data != null) {
      emit(CollectionsDone(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(const CollectionsError());
    }
  }
}
