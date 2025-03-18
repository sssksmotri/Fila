import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/themes/styles.dart';

class CurrentLocationButton extends StatelessWidget {
  const CurrentLocationButton({
    super.key,
    this.onPressed,
  });

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: 44,
      child: ElevatedButton(
        onPressed: onPressed,
        style: AppStyles.whiteElevatedButton,
        child: Center(
          child: SvgPicture.asset(
            'assets/icons/current-location.svg',
          ),
        ),
      ),
    );
  }
}
