import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/themes/styles.dart';

class SocialNetworksItem extends StatelessWidget {
  const SocialNetworksItem({
    super.key,
    required this.color,
    required this.inconPath,
    this.onTap,
  });

  final Color color;
  final String inconPath;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(AppStyles.radiusElement),
          ),
        ),
        child: Container(
          width: 24,
          height: 24,
          padding: const EdgeInsets.all(7.4),
          child: Center(
            child: SvgPicture.asset(
              inconPath,
            ),
          ),
        ),
      ),
    );
  }
}
