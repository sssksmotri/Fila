import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../domain/entities/collection_entity.dart';

part 'collection_event.dart';
part 'collection_state.dart';

class CollectionBloc extends Bloc<CollectionEvent, CollectionState> {
  final UseCase _collectionUsecase;

  CollectionBloc(this._collectionUsecase) : super(CollectionInitial()) {
    on<GetCollection>(_onGetCollection);
  }

  void _onGetCollection(
      GetCollection event, Emitter<CollectionState> emit) async {
    emit(const CollectionLoading());

    final dataState = await _collectionUsecase.call(params: event.collectionId);

    if (dataState is DataSuccess && dataState.data != null) {
      emit(CollectionDone(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(const CollectionError());
    }
  }
}
