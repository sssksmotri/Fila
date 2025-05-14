import 'package:flutter/material.dart';
//

import 'colors.dart';

class AppStyles {
  static const TextStyle elevatedButtonTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headline = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 17,
    height: 24 / 17,
    color: AppColors.black,
    letterSpacing: .15,
  );

  static TextStyle caption2 = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 11,
    height: 14 / 11,
    color: AppColors.gray,
    letterSpacing: .4,
  );

  static TextStyle caption1 = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 16 / 12,
    color: AppColors.darkGray,
    letterSpacing: .2,
  );

  static TextStyle caption1Bold = caption1.copyWith(
    fontWeight: FontWeight.w500,
  );

  static TextStyle caption2Bold = caption2.copyWith(
    fontWeight: FontWeight.w500,
  );

  static TextStyle callout = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 24 / 16,
    letterSpacing: -.05,
    color: AppColors.black,
    fontFamily: 'Roboto',
  );

  static TextStyle title3 = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 22,
    height: 28 / 22,
    color: AppColors.black,
  );

  static TextStyle title2 = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 22,
    height: 32 / 22,
    color: AppColors.black,
  );

  static TextStyle title1 = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 28,
    height: (36 / 28),
    color: AppColors.dark,
  );

  static TextStyle body = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 17,
    height: 24 / 17,
    color: AppColors.darkGray,
  );

  static TextStyle bodyRegular = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 17,
    height: 22 / 17,
    color: Color(0xFF007AFF),
  );

  static TextStyle bodyBold = body.copyWith(
    fontWeight: FontWeight.w500,
  );

  static TextStyle footnote = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 13,
    height: (18 / 13),
    color: AppColors.gray,
    letterSpacing: .1,
    fontFamily: 'Roboto',
  );

  static TextStyle footnoteBold = footnote.copyWith(
    fontWeight: FontWeight.w600,
  );

  static TextStyle subhead = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 15,
    height: 20 / 15,
    color: AppColors.superLight,
    letterSpacing: -.1,
  );

  static TextStyle subheadBold = subhead.copyWith(
    fontWeight: FontWeight.w500,
  );

  static ButtonStyle whiteElevatedButton = ElevatedButton.styleFrom(
    foregroundColor: AppColors.darkGray,
    disabledForegroundColor: AppColors.darkGray,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18),
    ),
    backgroundColor: AppColors.white,
    disabledBackgroundColor: AppColors.white.withOpacity(.4),
    elevation: 0,
    padding: const EdgeInsets.all(12),
    textStyle: AppStyles.elevatedButtonTextStyle.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 17,
      fontFamily: 'Roboto',
      letterSpacing: .16,
    ),
  );

  static ButtonStyle roundTopElevatedButton = ElevatedButton.styleFrom(
    foregroundColor: AppColors.darkGray,
    disabledForegroundColor: AppColors.darkGray,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(AppStyles.btnRadius),
        topRight: Radius.circular(AppStyles.btnRadius),
      ),
    ),
    backgroundColor: AppColors.white,
    disabledBackgroundColor: AppColors.white.withOpacity(.4),
    elevation: 0,
    padding: const EdgeInsets.all(12),
    textStyle: AppStyles.elevatedButtonTextStyle.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 17,
      fontFamily: 'Roboto',
      letterSpacing: .16,
    ),
  );

  static ButtonStyle roundBottomElevatedButton = ElevatedButton.styleFrom(
    foregroundColor: AppColors.darkGray,
    disabledForegroundColor: AppColors.darkGray,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(AppStyles.btnRadius),
        bottomRight: Radius.circular(AppStyles.btnRadius),
      ),
    ),
    backgroundColor: AppColors.white,
    disabledBackgroundColor: AppColors.white.withOpacity(.4),
    elevation: 0,
    padding: const EdgeInsets.all(12),
    textStyle: AppStyles.elevatedButtonTextStyle.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: AppStyles.smallSize,
      fontFamily: 'Roboto',
      letterSpacing: .16,
    ),
  );

  static ButtonStyle greyElevatedButton = ElevatedButton.styleFrom(
    foregroundColor: AppColors.darkGray,
    disabledForegroundColor: AppColors.darkGray,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppStyles.btnRadius),
    ),
    backgroundColor: AppColors.lightScaffoldBackground,
    disabledBackgroundColor: AppColors.white.withOpacity(.4),
    elevation: 0,
    padding: const EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 5.5,
    ),
    textStyle: AppStyles.elevatedButtonTextStyle.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 13,
      height: 18 / 13,
      fontFamily: 'Roboto',
      letterSpacing: .1,
      color: AppColors.darkPrimary,
    ),
  );

  static ButtonStyle superLightElevatedButton = ElevatedButton.styleFrom(
    foregroundColor: AppColors.darkGray,
    disabledForegroundColor: AppColors.darkGray,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppStyles.btnRadius),
    ),
    backgroundColor: AppColors.superLight,
    disabledBackgroundColor: AppColors.white.withOpacity(.4),
    elevation: 0,
    padding: const EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 5.5,
    ),
    textStyle: AppStyles.elevatedButtonTextStyle.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      height: 24 / 16,
      fontFamily: 'Roboto',
      letterSpacing: .1,
      color: AppColors.darkPrimary,
    ),
  );

  static ButtonStyle lightGreyElevatedButton = ElevatedButton.styleFrom(
    foregroundColor: AppColors.darkGray,
    disabledForegroundColor: AppColors.darkGray,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppStyles.btnRadius),
    ),
    backgroundColor: AppColors.lightGray,
    disabledBackgroundColor: AppColors.white.withOpacity(.4),
    elevation: 0,
    padding: const EdgeInsets.all(12),
    textStyle: AppStyles.elevatedButtonTextStyle.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 13,
      height: 18 / 13,
      fontFamily: 'Roboto',
      letterSpacing: .1,
      color: AppColors.darkPrimary,
    ),
  );

  static ButtonStyle greyElevatedButtonOpacity = ElevatedButton.styleFrom(
    foregroundColor: AppColors.darkGray,
    disabledForegroundColor: AppColors.darkGray,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppStyles.btnRadius),
    ),
    backgroundColor: AppColors.lightScaffoldBackground,
    disabledBackgroundColor: AppColors.lightScaffoldBackground.withOpacity(.5),
    elevation: 0,
    padding: const EdgeInsets.symmetric(
      horizontal: 5,
      vertical: 8,
    ),
    textStyle: AppStyles.elevatedButtonTextStyle.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 13,
      height: 18 / 13,
      fontFamily: 'Roboto',
      letterSpacing: .1,
      color: AppColors.darkPrimary,
    ),
  );

  static EdgeInsets xsmallPadding = const EdgeInsets.all(4);
  static EdgeInsets smallPadding = const EdgeInsets.all(8);
  static EdgeInsets mediumPadding = const EdgeInsets.all(16);
  static EdgeInsets largePadding = const EdgeInsets.all(32);
  static EdgeInsets xLargePadding = const EdgeInsets.all(64);
  static EdgeInsets xxLargePadding = const EdgeInsets.all(128);

  static double smallIconSize = 16;
  static double mediumIconSize = 32;
  static double largeIconSize = 64;
  static double xlargeIconSize = 80;
  static double x2largeIconSize = 160;

  // custom sizes
  static double loadingIconSize = 220;
  static double appBarSize = 60;

  static double xsmallSize = 8;
  static double smallSize = 17;
  static double mediumSize = 32;
  static double largeSize = 64;
  static double xlargeSize = 80;
  static double x2largeSize = 96;
  static double x3largeSize = 160;

  static double xlabelSmallSize = 4;
  static double labelSmallSize = 8;
  static double labelMediumSize = 16;
  static double labelLargeSize = 24;

  static TextStyle headlineLarge = const TextStyle(fontSize: 64);

  static TextStyle headlineMedium = const TextStyle(fontSize: 32);

  static TextStyle labelLarge = const TextStyle(fontSize: 24);

  static TextStyle labelMedium = const TextStyle(fontSize: 16);

  static SizedBox xSsmallVGap = const SizedBox(height: 4);
  static SizedBox xxsmall6VGap = const SizedBox(height: 6);
  static SizedBox xsmallVGap = const SizedBox(height: 8);
  static SizedBox xsmall12VGap = const SizedBox(height: 12);
  static SizedBox xxsmallVGap = const SizedBox(height: 16);
  static SizedBox xxsmall20VGap = const SizedBox(height: 20);
  static SizedBox smallVGap = const SizedBox(height: 24);
  static SizedBox small28VGap = const SizedBox(height: 28);
  static SizedBox mediumVGap = const SizedBox(height: 32);
  static SizedBox largeVGap = const SizedBox(height: 40);
  static SizedBox large42VGap = const SizedBox(height: 42);

  static SizedBox xSsmallHGap = const SizedBox(width: 4);
  static SizedBox xxsmall6HGap = const SizedBox(width: 6);
  static SizedBox xxsmallHGap = const SizedBox(width: 8);
  static SizedBox xxsmall12HGap = const SizedBox(width: 12);
  static SizedBox xsmallHGap = const SizedBox(width: 16);
  static SizedBox xsmall20HGap = const SizedBox(width: 20);
  static SizedBox smallHGap = const SizedBox(width: 24);
  static SizedBox small28HGap = const SizedBox(width: 28);
  static SizedBox mediumHGap = const SizedBox(width: 32);
  static SizedBox largeHGap = const SizedBox(width: 40);
  static SizedBox large42HGap = const SizedBox(width: 42);

  static double xsmallRadius = 12;
  static double productPicRadius = 20;
  static double smallRadius = 24;
  static double mediumRadius = 32;
  static double largeRadius = 64;
  static double xlargeRadius = 80;

  static double btnRadius = 16;
  static double radiusElement = 16;
  static double radiusBlock = 32;

  static double bannerWidth = 325;
  static double bannerHeight = 165;
}
