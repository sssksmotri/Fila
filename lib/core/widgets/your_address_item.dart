import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/themes/colors.dart';
import '../../config/themes/styles.dart';

class YourAddressItem extends StatelessWidget {
  const YourAddressItem({
    super.key,
    required this.val,
    this.isActive = false,
    this.onTap,
    this.onEditTap,
  });

  final bool isActive;
  final String val;
  final void Function()? onTap;
  final void Function()? onEditTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: isActive ? AppColors.darkPrimary : AppColors.gray,
              borderRadius: const BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            child: Center(
              child: Container(
                width: isActive ? 8 : 15,
                height: isActive ? 8 : 15,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      isActive ? 8 : 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Text(
              val,
              style: AppStyles.subhead.copyWith(
                color: isActive ? AppColors.black : AppColors.gray,
              ),
            ),
          ),
          if (isActive && onEditTap != null)
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: onEditTap,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: SvgPicture.asset(
                  'assets/icons/pencil_underscore.svg',
                ),
              ),
            ),
        ],
      ),
    );
  }
}
