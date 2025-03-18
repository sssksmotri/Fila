import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../domain/entities/product_entity.dart';
import '../../../domain/entities/product_request_entity.dart';
import '../../../domain/usecases/products_usecase.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc(this._productsUsecase) : super(const Initial()) {
    on<_GetProducts>(_onGetProducts);
    on<_Clear>(_onClear);
  }

  final ProductsUsecase _productsUsecase;

  void _onGetProducts(
    _GetProducts event,
    Emitter<ProductsState> emit,
  ) async {
    try {
      emit(const ProductsState.loading());

      final dataState = await _productsUsecase(params: event.request);

      if (dataState is DataSuccess && dataState?.data != null) {
        emit(ProductsState.success(dataState!.data!.products));
      }

      if (dataState is DataFailed) {
        emit(
          ProductsState.error(
            dataState!.error?.message ?? '',
          ),
        );
      }
    } catch (message) {
      emit(
        ProductsState.error(
          message.toString(),
        ),
      );
    }
  }

  void _onClear(
    _Clear event,
    Emitter<ProductsState> emit,
  ) {
    emit(const ProductsState.initial());
  }
}
