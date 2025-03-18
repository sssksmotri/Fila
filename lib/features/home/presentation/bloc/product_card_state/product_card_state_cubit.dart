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

  void addModifier(ModifierItemEntity modifierItem) {
    List<ModifierItemEntity> modifiers = [];
    modifiers.addAll(state.selectedModifiers);

    modifiers.add(modifierItem);

    emit(state.copyWith(
      selectedModifiers: modifiers,
    ));
  }

  void addUniqModifier(ModifierItemEntity modifierItem, List<ModifierItemEntity> modifierItems) {
    List<ModifierItemEntity> modifiers = [];
    modifiers.addAll(state.selectedModifiers);

    modifiers.removeWhere((element) => modifierItems.contains(element));

    modifiers.add(modifierItem);

    emit(state.copyWith(
      selectedModifiers: modifiers,
    ));
  }

  void deleteModifier(ModifierItemEntity modifierItem) {
    List<ModifierItemEntity> modifiers = [];
    modifiers.addAll(state.selectedModifiers);

    modifiers.removeWhere((element) => element.id == modifierItem.id);

    emit(state.copyWith(
      selectedModifiers: modifiers,
    ));
  }

  Decimal _getProductPrice() {
    return state.product.price;
  }

  Decimal _getModifiresTotalPrice() {
    Decimal price = Decimal.zero;
    state.selectedModifiers.map((m) {
      price += (m.price ?? Decimal.zero);
    }).toList();

    return price;
  }

  Decimal get productTotalPrice => _getProductPrice() + _getModifiresTotalPrice();

  Decimal get productTotalWeight {
    Decimal val = Decimal.parse('0.0');
    state.selectedModifiers.map((e) => val = val + Decimal.parse(e.weight ?? '0')).toList();
    return val;
  }

  String get productName {
    String name = '';
    //state.selectedModifiers.map((e) => name = '$name${e.title} ').toList();

    for (var i = 0; i < 2; i++) {
      name = name + pizzaHalfMod()[i].title + ((i + 1) < 2 ? ' + ' : '');
    }

    return name.trim();
  }

  List<ModifierItemEntity> pizzaHalfMod() {
    final List<ModifierItemEntity> halfs = [];

    state.selectedModifiers.map((selectedModifier) {
      product.modifiers.map((modifier) {
        modifier.items.map((item) {
          if (selectedModifier.id == item.id && modifier.type == 'is_half_pizza') {
            halfs.add(item);
          }
        }).toList();
      }).toList();
    }).toList();

    // product.modifiers.map((modifier) {
    //   modifier.items.map((item) {
    //     state.selectedModifiers.map((selectedModifier) {
    //       if (selectedModifier.id == item.id && modifier.type == 'is_half_pizza') {
    //         halfs.add(item);
    //       }
    //     }).toList();
    //   }).toList();
    // }).toList();

    return halfs;
  }

  List<ModifierItemEntity> selectedModifiersByParent(ModifierEntity modifier) {
    return product.modifiers.firstWhere((element) => element == modifier).items.where((element) => state.selectedModifiers.contains(element)).toList();
  }
}
