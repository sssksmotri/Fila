import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/themes/styles.dart';

class MinusButton extends StatelessWidget {
  const MinusButton({super.key, this.onPressed});

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: 44,
      child: ElevatedButton(
        onPressed: onPressed,
        style: AppStyles.roundBottomElevatedButton,
        child: Center(
          child: SvgPicture.asset(
            'assets/icons/minus.svg',
          ),
        ),
      ),
    );
  }
}
