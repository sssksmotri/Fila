import 'package:flutter/material.dart';
import 'package:monobox/core/extensions/color.dart';

import '../../../../config/themes/colors.dart';
import '../../../../config/themes/styles.dart';

class FilterListContainer extends StatelessWidget {
  const FilterListContainer({
    super.key,
    required this.child,
    required this.isFirstCollection,
    this.isActive = false,
    this.onTap,
    this.padding,
    this.color,
  });

  final Widget child;
  final bool isActive;
  final void Function()? onTap;
  final EdgeInsetsGeometry? padding;
  final String? color;
  final bool isFirstCollection;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isFirstCollection)
          Container(
            margin: const EdgeInsets.only(right: 8),
            width: 1,
            height: 34,
            color: AppColors.lightGray,
          ),
        GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: onTap,
          child: Container(
            height: 34,
            padding: padding ??
                const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
            decoration: isActive
                ? BoxDecoration(
                    color: AppColors.superLight,
                    borderRadius: BorderRadius.all(
                      Radius.circular(AppStyles.btnRadius),
                    ),
                  )
                : color != null
                    ? BoxDecoration(
                        color: HexColor(color!),
                        borderRadius: BorderRadius.all(
                          Radius.circular(AppStyles.btnRadius),
                        ),
                      )
                    : null,
            child: Align(
              alignment: Alignment.center,
              child: child,
            ),
          ),
        ),
      ],
    );
  }
}
