import 'package:flutter/material.dart';
import 'package:riverpod_boiler_plate/theme/colors.dart';
import 'package:riverpod_boiler_plate/utils/size_utils.dart';

class CustomTextStyles{
  static TextStyle bodyLarge = TextStyle(
    color: primaryTextColor.withOpacity(0.4),
    fontSize: 18.fSize,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
  );
  static TextStyle bodyMedium = TextStyle(
    color: primaryTextColor.withOpacity(1),
    fontSize: 14.fSize,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
  );
  static TextStyle bodySmall = TextStyle(
    color: primaryTextColor.withOpacity(0.4),
    fontSize: 12.fSize,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
  );
  static TextStyle displaySmall = TextStyle(
    color: primaryTextColor,
    fontSize: 34.fSize,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
  );
  static TextStyle headlineMedium = TextStyle(
    color: primaryTextColor,
    fontSize: 28.fSize,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
  );
  static TextStyle labelLarge = TextStyle(
    color: primaryTextColor.withOpacity(0.4),
    fontSize: 12.fSize,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
  );
  static TextStyle titleLarge = TextStyle(
    color: primaryTextColor,
    fontSize: 20.fSize,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
  );
  static TextStyle titleMedium = TextStyle(
    color: primaryTextColor,
    fontSize: 18.fSize,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
  );
  static TextStyle titleSmall = TextStyle(
    color: primaryTextColor.withOpacity(0.4),
    fontSize: 14.fSize,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
  );
}