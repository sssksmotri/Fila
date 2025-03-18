import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/themes/colors.dart';
import '../../../../config/themes/styles.dart';
import '../../../home/presentation/widgets/bottom_sheet_container.dart';
import 'qr_code.dart';

class QrButton extends StatelessWidget {
  const QrButton({
    super.key,
    required this.numberCard,
  });

  final String numberCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: AppColors.white,
          useRootNavigator: true,
          context: context,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(
                AppStyles.radiusBlock,
              ),
            ),
          ),
          builder: (BuildContext context) {
            return BottomSheetContainer(
              mode: 'autosize',
              header: Text(
                'Карта лояльности',
                style: AppStyles.title3,
              ),
              child: QrCode(
                cardNumber: numberCard,
              ),
            );
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
        height: 40,
        width: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              AppStyles.radiusElement,
            ),
          ),
          color: AppColors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 28,
              height: 28,
              child: SvgPicture.asset(
                'assets/icons/qr.svg',
              ),
            ),
            Text(
              'Ваш QR',
              style: AppStyles.subheadBold.copyWith(
                color: AppColors.dark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
