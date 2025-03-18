import 'package:flutter/material.dart';

import '../../../../config/themes/colors.dart';
import '../../../../config/themes/styles.dart';

class BasketBadge extends StatelessWidget {
  const BasketBadge({
    super.key,
    required this.counter,
    required this.active,
  });
  final int counter;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: active ? AppColors.lightPrimary : AppColors.gray,
      ),
      child: Center(
        child: Text(
          '$counter',
          style: AppStyles.caption1Bold.copyWith(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
