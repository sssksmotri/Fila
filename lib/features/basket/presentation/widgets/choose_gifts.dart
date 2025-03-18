import 'package:flutter/material.dart';

import '../../../../config/themes/styles.dart';
import '../../../home/domain/entities/product_entity.dart';
import 'gift_item.dart';

class ChooseGifts extends StatelessWidget {
  const ChooseGifts({
    super.key,
    required this.products,
  });

  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return Container();
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Выберите подарок',
            style: AppStyles.title3,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 101,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  if (index == 0)
                    const SizedBox(
                      width: 16,
                    ),
                  GiftItem(
                    product: products[index],
                  ),
                  SizedBox(
                    width: (index + 1) == products.length ? 16 : 8,
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
