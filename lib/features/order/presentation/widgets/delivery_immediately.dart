import 'package:flutter/material.dart';

import '../../../../config/themes/colors.dart';
import '../../../../config/themes/styles.dart';

class DeliveryImmediately extends StatelessWidget {
  const DeliveryImmediately({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 16,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppStyles.radiusElement,
          ),
        ),
        color: AppColors.lightScaffoldBackground,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 36,
            width: double.infinity,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1.0,
                  color: AppColors.lightGray,
                ),
              ),
            ),
            child: Text(
              'Доставим к ~13:15',
              style: AppStyles.callout,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Завершите оформление заказа и мы рассчитаем более точное время',
            style: AppStyles.body,
          ),
        ],
      ),
    );
  }
}
