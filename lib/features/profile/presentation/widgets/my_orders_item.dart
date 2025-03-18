import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import '../../../../config/routes/app_router.dart';
import '../../../../config/themes/colors.dart';
import '../../../../config/themes/styles.dart';
import '../../../../core/widgets/rounded_container.dart';
import '../../../order/domain/entities/order_entity.dart';
import 'add_feedback_button.dart';
import 'order_badge.dart';

class MyOrdersItem extends StatelessWidget {
  const MyOrdersItem({
    super.key,
    required this.order,
  });

  final OrderEntity order;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      header: GestureDetector(
        onTap: () => context.navigateTo(
          OrderRoute(
            orderId: order.id,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Заказ #${(order.number?.isNotEmpty == true ? order.number! : order.id.toString())}',
              style: AppStyles.bodyBold.copyWith(
                color: AppColors.black,
              ),
            ),
            OrderBadge(
              text: order.status,
              status: OrderStatus.delivered,
            ),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${order.products.length} ${Intl.plural(
                  order.products.length,
                  two: 'блюда',
                  few: 'блюд',
                  many: 'блюд',
                  other: 'блюдо',
                )}, ${order.totalPrice} ₽',
                //'7 '+(plural)+', 3 259 ₽',
                style: AppStyles.subheadBold.copyWith(
                  color: AppColors.darkGray,
                ),
              ),
              Text(
                'Создан ${DateFormat('d MMM kk:mm', 'Ru_ru').format(order.createdAt.toLocal())}',
                style: AppStyles.footnote.copyWith(
                  color: AppColors.gray,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            //width: double.infinity,
            height: 76,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: order.products.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    _productImageItem(order.products[index].image),
                    const SizedBox(
                      width: 12,
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          if (order.needReview)
            AddFeedbackButton(
              order: order,
            ),
        ],
      ),
    );
  }

  Widget _productImageItem(String? img) {
    return Container(
      width: 76,
      height: 76,
      decoration: BoxDecoration(
        image: img != null
            ? DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(img),
              )
            : null,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
        color: AppColors.superLight,
      ),
    );
  }
}
