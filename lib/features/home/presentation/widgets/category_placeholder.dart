import 'package:flutter/material.dart';

import '../../../../config/themes/colors.dart';
import '../../../../config/themes/styles.dart';

class CategoryPlaceHolder extends StatelessWidget {
  const CategoryPlaceHolder({
    super.key,
    required this.imageWidth,
  });
  final double imageWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: imageWidth,
          height: imageWidth,
          decoration: BoxDecoration(
            color: AppColors.shimmer,
            borderRadius: BorderRadius.all(
              Radius.circular(AppStyles.btnRadius),
            ),
          ),
        ),
        AppStyles.xsmallVGap,
        Container(
          width: imageWidth,
          height: 24,
          color: AppColors.shimmer,
        ),
      ],
    );
  }
}
