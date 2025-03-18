import 'package:flutter/material.dart';

import '../../../../config/themes/colors.dart';
import '../../../../config/themes/styles.dart';

class MyOrdersEmpty extends StatelessWidget {
  const MyOrdersEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(top: 35),
        child: Text(
          'У Вас нет заказов',
          style: AppStyles.bodyBold.copyWith(
            color: AppColors.gray,
          ),
        ),
      ),
    );
  }
}
