import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../config/themes/colors.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7.6),
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: AppColors.positive.withOpacity(.15),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            11.82,
          ),
        ),
      ),
      child: SizedBox(
        width: 15.38,
        height: 10.46,
        child: SvgPicture.asset(
          'assets/icons/check.svg',
          color: AppColors.positive,
        ),
      ),
    );
  }
}
