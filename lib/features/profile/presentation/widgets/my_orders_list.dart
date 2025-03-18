import 'package:flutter/material.dart';

import '../../../order/domain/entities/order_entity.dart';
import 'my_orders_item.dart';

class MyOrdersList extends StatelessWidget {
  const MyOrdersList({
    super.key,
    required this.orders,
  });

  final List<OrderEntity> orders;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: orders.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(
            bottom: 8,
          ),
          child: MyOrdersItem(
            order: orders[index],
          ),
        );
      },
    );
  }
}
