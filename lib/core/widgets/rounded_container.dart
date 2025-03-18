import 'package:flutter/material.dart';

import '../../config/themes/colors.dart';
import '../../config/themes/styles.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    required this.child,
    this.header,
    this.padding,
    this.headerPadding,
    this.height,
  });
  final Widget child;
  final Widget? header;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? headerPadding;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 28,
          ),
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppStyles.radiusBlock,
          ),
        ),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.lightDarkGray.withOpacity(.1),
            blurRadius: 12.0,
            offset: const Offset(
              0.0,
              0.0,
            ),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (header != null)
            Padding(
              padding: headerPadding ?? const EdgeInsets.all(0),
              child: Container(
                height: 38,
                width: double.infinity,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1.0,
                      color: AppColors.superLight,
                    ),
                  ),
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: header!,
                ),
              ),
            ),
          child,
        ],
      ),
    );
  }
}
