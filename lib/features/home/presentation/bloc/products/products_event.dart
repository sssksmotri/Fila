part of 'products_bloc.dart';

@freezed
class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.getProducts(ProductRequestEntity request) =
      _GetProducts;

  const factory ProductsEvent.clear() = _Clear;
}
