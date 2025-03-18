import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/themes/colors.dart';
import '../../../../config/themes/styles.dart';

class LoyaltyDescItem extends StatelessWidget {
  const LoyaltyDescItem({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    this.isLast = false,
  });
  final String title;
  final String description;
  final bool isLast;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 44,
                height: 44,
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: AppColors.darkPrimary.withOpacity(.15),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    icon,
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppStyles.headline.copyWith(
                        color: AppColors.dark,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      description,
                      style: AppStyles.subhead.copyWith(
                        color: AppColors.gray,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (!isLast)
            Container(
              height: 19,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: AppColors.lightGray,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
