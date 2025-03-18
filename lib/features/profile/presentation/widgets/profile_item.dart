import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:monobox/config/themes/colors.dart';

import '../../../../config/themes/styles.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
    this.subText,
    this.textColor,
    this.showArrow = true,
  });

  final String icon;
  final String text;
  final void Function(BuildContext context)? onTap;
  final Widget? subText;
  final Color? textColor;
  final bool showArrow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap != null ? onTap!(context) : null,
      child: Container(
        color: Colors.transparent,
        height: subText == null ? 36 : null,
        constraints: subText == null
            ? const BoxConstraints(
                minHeight: 36,
              )
            : null,
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(icon),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  text,
                  style: AppStyles.callout.copyWith(
                    color: textColor ?? AppColors.dark,
                  ),
                ),
                if (showArrow) const Spacer(),
                if (showArrow)
                  SizedBox(
                    height: 10.75,
                    width: 6.22,
                    child: SvgPicture.asset(
                      'assets/icons/arrow_right.svg',
                      color: AppColors.gray,
                    ),
                  ),
              ],
            ),
            if (subText != null) const SizedBox(height: 16),
            if (subText != null) subText!,
          ],
        ),
      ),
    );
  }
}
