import 'package:flutter/material.dart';
import 'package:riverpod_boiler_plate/theme/colors.dart';
import 'package:riverpod_boiler_plate/utils/size_utils.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillPrimary => const BoxDecoration(
    color: primaryColor,
  );
  static BoxDecoration get fillSecondary => const BoxDecoration(
    color: secondaryColor,
  );
  static BoxDecoration get fillInfo => const BoxDecoration(
    color: infoColor,
  );


  // Outline decorations
  static BoxDecoration get outlinePrimary => BoxDecoration(
    color: primaryColor.withOpacity(1),
    border: Border.all(
      color: primaryColor.withOpacity(1),
      width: 1.5,
    ),
  );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder12 => BorderRadius.circular(
    12.h,
  );
  static BorderRadius get circleBorder24 => BorderRadius.circular(
    24.h,
  );
  static BorderRadius get circleBorder36 => BorderRadius.circular(
    36.h,
  );

  // Rounded borders
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
    5.h,
  );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
    8.h,
  );
}