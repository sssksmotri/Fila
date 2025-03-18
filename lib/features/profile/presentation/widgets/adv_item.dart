import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/themes/colors.dart';
import '../../../../config/themes/styles.dart';

class AdvItem extends StatelessWidget {
  const AdvItem({
    super.key,
    required this.icon,
    required this.header,
    required this.text,
    this.last = false,
  });

  final String icon;
  final Widget header;
  final String text;
  final bool last;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 7.25,
            vertical: 6.25,
          ),
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: AppColors.darkPrimary.withOpacity(.15),
            borderRadius: const BorderRadius.all(
              Radius.circular(
                8,
              ),
            ),
          ),
          child: SvgPicture.asset(
            icon,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header,
              const SizedBox(
                height: 8,
              ),
              Text(
                text,
                style: AppStyles.subhead.copyWith(
                  color: AppColors.gray,
                  fontSize: 15,
                  height: 20 / 15,
                ),
              ),
              if (!last)
                const SizedBox(
                  height: 16,
                ),
              if (!last)
                Container(
                  height: 1,
                  width: double.infinity,
                  color: AppColors.lightGray,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
