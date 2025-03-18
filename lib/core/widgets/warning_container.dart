import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../config/themes/colors.dart';

class WarningContainer extends StatelessWidget {
  const WarningContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7.6),
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: AppColors.destructive.withOpacity(.15),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            11.82,
          ),
        ),
      ),
      child: SizedBox(
        width: 24.48,
        height: 22.8,
        child: SvgPicture.asset(
          'assets/icons/warning.svg',
        ),
      ),
    );
  }
}
