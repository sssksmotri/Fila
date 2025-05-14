part of 'product_card_state_cubit.dart';

@freezed
class ProductCardStateState with _$ProductCardStateState {
  const factory ProductCardStateState({
    required ProductEntity product,
    @Default({}) Map<int, int> selectedQuantities,
  }) = _ProductCardStateState;
}
