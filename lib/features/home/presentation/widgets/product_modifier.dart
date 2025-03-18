import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monobox/config/themes/colors.dart';
import 'package:monobox/core/widgets/text_switcher.dart';

import '../../../../config/themes/styles.dart';
import '../../../../core/widgets/custom_checkbox.dart';
import '../../domain/entities/product_entity.dart';
import '../bloc/product_card_state/product_card_state_cubit.dart';

class ProductModifier extends StatelessWidget {
  const ProductModifier({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCardStateCubit, ProductCardStateState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...product.modifiers.where((element) => element.type != 'is_half_pizza').map((modifier) {
              if (modifier.type == 'switcher') {
                if (context.read<ProductCardStateCubit>().selectedModifiersByParent(modifier).isEmpty) {
                  context.read<ProductCardStateCubit>().addModifier(modifier.items[0]);
                }

                int selectedIndex = 0;
                for (int i = 0; i < modifier.items.length; i++) {
                  if (context.read<ProductCardStateCubit>().selectedModifiersByParent(modifier).contains(modifier.items[i])) {
                    selectedIndex = i;
                    print('selectedIndex = $selectedIndex');
                  }
                  // context.read<ProductCardStateCubit>().selectedModifiersByParent(modifier).map((item) {

                  // }).toList();
                  // context.read<ProductCardStateCubit>().selectedModifiersByParent(modifier).map((item) {
                  //   print(context.read<ProductCardStateCubit>().selectedModifiersByParent(modifier).length);
                  //   if (context.read<ProductCardStateCubit>().selectedModifiersByParent(modifier).length > 0) {
                  //     print(context.read<ProductCardStateCubit>().selectedModifiersByParent(modifier)[0].title);
                  //   }

                  //   print(context.read<ProductCardStateCubit>().selectedModifiersByParent(modifier).contains(item));

                  //   if (context.read<ProductCardStateCubit>().selectedModifiersByParent(modifier).contains(item)) {
                  //     selectedIndex = i;
                  //     print('selectedIndex = $selectedIndex');
                  //   }
                  // }).toList();
                }
                print('selectedIndex = $selectedIndex');
                return Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: TextSwitcher(
                    items: modifier.items.map((item) => item.title).toList(),
                    onTap: (itemIndex) {
                      context.read<ProductCardStateCubit>().addUniqModifier(modifier.items[itemIndex], modifier.items);
                    },
                    selectedIndex: selectedIndex,
                  ),
                );
              }
              if (modifier.type == 'checkbox') {
                Container(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            modifier.title,
                            style: AppStyles.footnote,
                          ),
                          if (modifier.maxQuantity != null)
                            Text(
                              '${context.read<ProductCardStateCubit>().selectedModifiersByParent(modifier).length} из ${modifier.maxQuantity}',
                              style: AppStyles.caption1.copyWith(
                                color: AppColors.gray,
                              ),
                            )
                        ],
                      ),
                      AppStyles.xsmall12VGap,
                      ...modifier.items.map(
                        (modifierItem) => Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: CustomCheckBox(
                            disabled: modifier.maxQuantity != null && context.read<ProductCardStateCubit>().selectedModifiersByParent(modifier).length >= modifier.maxQuantity!,
                            label: modifierItem.title,
                            sufix: Text(
                              modifierItem.price != null ? '+${modifierItem.price} ₽' : '',
                              style: AppStyles.footnote,
                            ),
                            onSelect: (active) {
                              if (active) {
                                context.read<ProductCardStateCubit>().addModifier(modifierItem);
                              } else {
                                context.read<ProductCardStateCubit>().deleteModifier(modifierItem);
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
              return Container();
            }),
          ],
        );
      },
    );
  }
}
