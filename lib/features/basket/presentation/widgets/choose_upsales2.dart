import 'package:flutter/material.dart';

import '../../../../config/themes/styles.dart';
import '../../../../core/widgets/rounded_container.dart';
import '../../../order/domain/entities/upsale_entity.dart';
import 'dop_product_item.dart';
import 'other_sous.dart';

class ChooseUpsales2 extends StatelessWidget {
  const ChooseUpsales2({
    super.key,
    required this.upsale,
  });

  final UpsaleEntity upsale;

  @override
  Widget build(BuildContext context) {
    const int productLimit = 4;

    if (upsale.products.isEmpty) {
      return Container();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 28),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Text(
            upsale.title,
            style: AppStyles.title3,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        RoundedContainer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...upsale.products.take(productLimit).map(
                    (product) => Padding(
                      padding: const EdgeInsets.only(
                        bottom: 24,
                      ),
                      child: DopProductItem(
                        product: product,
                      ),
                    ),
                  ),
              if (upsale.products.length > productLimit)
                OtherSous(
                  products: upsale.products.skip(productLimit).toList(),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
