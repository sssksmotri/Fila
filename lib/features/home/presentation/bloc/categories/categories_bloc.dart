import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../domain/entities/category_entity.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc(this._categoriesUsecase) : super(CategoriesInitial()) {
    on<GetCategories>(_onGetCategories);
  }

  final UseCase _categoriesUsecase;

  void _onGetCategories(
      CategoriesEvent event, Emitter<CategoriesState> emit) async {
    emit(const CategoriesLoading());

    final dataState = await _categoriesUsecase();

    if (dataState is DataSuccess && dataState.data != null) {
      emit(CategoriesDone(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(const CategoriesError());
    }
  }
}
