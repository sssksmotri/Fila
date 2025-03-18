import 'package:flutter/material.dart';

import '../../../../config/themes/styles.dart';
import '../../../home/presentation/widgets/product_mini_card.dart';
import '../../../order/domain/entities/upsale_entity.dart';

class ChooseUpsales extends StatelessWidget {
  const ChooseUpsales({
    super.key,
    required this.upsale,
  });

  final UpsaleEntity upsale;

  @override
  Widget build(BuildContext context) {
    if (upsale.products.isEmpty) {
      return Container();
    }

    return Column(children: [
      const SizedBox(height: 28),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              upsale.title,
              style: AppStyles.title3,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 206,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: upsale.products.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    if (index == 0)
                      const SizedBox(
                        width: 16,
                      ),
                    ProductMiniCard(
                      product: upsale.products[index],
                    ),
                    SizedBox(
                      width: (index + 1) == upsale.products.length ? 16 : 8,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      )
    ]);
  }
}
