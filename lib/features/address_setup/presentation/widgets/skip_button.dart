import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:monobox/config/themes/colors.dart';

import '../../../../config/routes/app_router.dart';
import '../../../../config/themes/styles.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
    this.height,
    this.onPressed,
  });

  final double? height;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 48,
      child: ElevatedButton(
        onPressed: () {
          if (onPressed != null) {
            onPressed!();
          } else {
            AutoRouter.of(context).replace(const HomeRoute());
          }
        },
        style: AppStyles.whiteElevatedButton,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Пропустить',
              style: AppStyles.bodyBold.copyWith(
                color: AppColors.darkGray,
                height: 1,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 12,
            )
          ],
        ),
      ),
    );
  }
}
