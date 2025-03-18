part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = Initial;
  const factory ProductsState.loading() = Loading;
  const factory ProductsState.success(List<ProductEntity> products) = Success;
  const factory ProductsState.error(String message) = ErrorState;
}
