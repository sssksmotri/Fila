import 'package:flutter/material.dart';

import '../../domain/entities/shop_entity.dart';
import 'shop_card.dart';

class ShopsList extends StatelessWidget {
  const ShopsList({
    super.key,
    required this.shops,
  });

  final List<ShopEntity> shops;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: shops.length,
      itemBuilder: (BuildContext context, int index) => ShopCard(
        shop: shops[index],
      ),
      separatorBuilder: (_, __) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Container(
          height: 1,
          width: double.infinity,
          color: const Color(0xFFc9c9c9),
        ),
      ),
    );
  }
}
