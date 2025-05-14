import 'package:decimal/decimal.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monobox/features/home/domain/entities/modifier_entity.dart';
import '../../../domain/entities/modifier_item_entity.dart';
import '../../../domain/entities/product_entity.dart';

part 'product_card_state_state.dart';
part 'product_card_state_cubit.freezed.dart';

class ProductCardStateCubit extends Cubit<ProductCardStateState> {
  ProductCardStateCubit(this.product) : super(ProductCardStateState(product: product));

  final ProductEntity product;

  void incrementModifier(ModifierItemEntity item) {
    final current = state.selectedQuantities[item.id] ?? 0;
    final max = item.maxQuantity ?? 1;
    if (current < max) {
      final newQuantities = Map<int, int>.from(state.selectedQuantities);
      newQuantities[item.id] = current + 1;
      emit(state.copyWith(selectedQuantities: newQuantities));
    }
  }

  void decrementModifier(ModifierItemEntity item) {
    final current = state.selectedQuantities[item.id] ?? 0;
    final min = item.minQuantity ?? 0;
    if (current > min) {
      final newQuantities = Map<int, int>.from(state.selectedQuantities);
      if (current > 1) {
        newQuantities[item.id] = current - 1;
      } else {
        newQuantities.remove(item.id);
      }
      emit(state.copyWith(selectedQuantities: newQuantities));
    }
  }

  void addModifier(ModifierItemEntity item) {
    final current = state.selectedQuantities[item.id] ?? 0;
    final max = item.maxQuantity ?? 1;
    if (current < max) {
      final newQuantities = Map<int, int>.from(state.selectedQuantities);
      newQuantities[item.id] = current + 1;
      emit(state.copyWith(selectedQuantities: newQuantities));
    }
  }

  void addUniqModifier(ModifierItemEntity item, List<ModifierItemEntity> modifierItems) {
    final newQuantities = Map<int, int>.from(state.selectedQuantities);

    for (var modItem in modifierItems) {
      newQuantities.remove(modItem.id);
    }

    final max = item.maxQuantity ?? 1;
    if ((newQuantities[item.id] ?? 0) < max) {
      newQuantities[item.id] = 1;
    }
    emit(state.copyWith(selectedQuantities: newQuantities));
  }

  void deleteModifier(ModifierItemEntity item) {
    final newQuantities = Map<int, int>.from(state.selectedQuantities);
    newQuantities.remove(item.id);
    emit(state.copyWith(selectedQuantities: newQuantities));
  }

  Decimal _getProductPrice() {
    return state.product.price;
  }

  Decimal _getModifiresTotalPrice() {
    Decimal price = Decimal.zero;
    state.selectedQuantities.forEach((id, quantity) {
      final item = product.modifiers
          .expand((m) => m.items)
          .firstWhere((i) => i.id == id);
      price += (item.price ?? Decimal.zero) * Decimal.fromInt(quantity);
    });
    return price;
  }

  Decimal get productTotalPrice => _getProductPrice() + _getModifiresTotalPrice();

  Decimal get productTotalWeight {
    Decimal val = Decimal.parse('0.0');
    state.selectedQuantities.forEach((id, quantity) {
      final item = product.modifiers
          .expand((m) => m.items)
          .firstWhere((i) => i.id == id);
      val += Decimal.parse(item.weight ?? '0') * Decimal.fromInt(quantity);
    });
    return val;
  }

  String get productName {
    String name = '';
    for (var i = 0; i < 2 && i < pizzaHalfMod().length; i++) {
      name = name + pizzaHalfMod()[i].title + ((i + 1) < 2 && i + 1 < pizzaHalfMod().length ? ' + ' : '');
    }
    return name.trim();
  }

  List<ModifierItemEntity> pizzaHalfMod() {
    return product.modifiers
        .where((m) => m.type == 'is_half_pizza')
        .expand((m) => m.items)
        .where((item) => (state.selectedQuantities[item.id] ?? 0) > 0)
        .toList();
  }

  List<ModifierItemEntity> selectedModifiersByParent(ModifierEntity modifier) {
    return product.modifiers
        .firstWhere((element) => element == modifier)
        .items
        .where((item) => state.selectedQuantities.containsKey(item.id) && state.selectedQuantities[item.id]! > 0)
        .toList();
  }
}