import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:monobox/config/themes/colors.dart';
import '../../../../config/themes/styles.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 44,
      height: 44,
      child: ElevatedButton(
        onPressed: () => AutoRouter.of(context).pop(),
        style: AppStyles.whiteElevatedButton,
        child: const Icon(
          Icons.arrow_back_ios,
          size: 15,
          color: AppColors.black,
        ),
      ),
    );
  }
}
