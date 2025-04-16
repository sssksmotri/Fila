import 'package:flutter/material.dart';
import '../../../../config/themes/colors.dart';
import '../../../../config/themes/styles.dart';

class DeliveryBadge extends StatelessWidget {
  const DeliveryBadge({
    super.key,
    required this.text,
    required this.color,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(AppStyles.radiusElement),
        ),
        color: color.withOpacity(.1),
      ),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 6),
          Text(
            text,
            softWrap: true,
            style: AppStyles.footnote.copyWith(
              color: AppColors.dark,
            ),
          ),
        ],
      ),
    );
  }
}
