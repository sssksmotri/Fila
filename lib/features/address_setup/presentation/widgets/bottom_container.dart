import 'package:flutter/material.dart';
import 'package:monobox/config/themes/colors.dart';

import '../../../../config/themes/styles.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24,
        right: 16,
        bottom: 16,
        left: 16,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(AppStyles.mediumRadius),
        ),
      ),
      child: child,
    );
  }
}
