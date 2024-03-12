import 'package:flutter/material.dart';
import 'package:riverpod_boiler_plate/theme/colors.dart';
import 'package:riverpod_boiler_plate/utils/size_utils.dart';

/// Extension to provide styles to [ElevatedButton]
class CustomButtonStyles {
  static ButtonStyle get fillDeepOrange => ElevatedButton.styleFrom(
        backgroundColor: deepOrange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.h),
        ),
      );

  static ButtonStyle get fillBlue => ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.h),
        ),
      );

  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: gray5003,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.h),
        ),
      );

  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}

/// Extension to provide styles to [IconButton]
class IconButtonStyles {
  static BoxDecoration get fillGray => BoxDecoration(
    color: gray5002,
    borderRadius: BorderRadius.circular(14.h),
  );
}

