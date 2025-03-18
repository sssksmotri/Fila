import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/themes/colors.dart';
import '../../../../config/themes/styles.dart';

class BasketActionButton extends StatelessWidget {
  const BasketActionButton({
    super.key,
    required this.asset,
    this.onPressed,
  });

  final String asset;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      //padding: EdgeInsets.all(11.67),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(AppStyles.btnRadius),
        ),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.lightDarkGray.withOpacity(.05),
            blurRadius: 8.0,
            offset: const Offset(
              0.0,
              4.0,
            ),
          )
        ],
      ),
      // child: SvgPicture.asset(
      //   asset,
      //   height: 20.67,
      // ),
      child: ElevatedButton(
        style: AppStyles.whiteElevatedButton,
        onPressed: onPressed,
        child: SvgPicture.asset(
          asset,
        ),
      ),
    );
  }
}
