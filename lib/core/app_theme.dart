import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Color primaryColor = Color(0xff067B96);
const Color blackColor = Color(0xff000000);
const Color whiteColor = Color(0xffffffff);
const Color greyColor = Color(0xff9B9B9B);
const Color primary50OpacityColor = Color(0x80067B96);
const Color black80OpacityColor = Color(0xCC000000);
const Color black70OpacityColor = Color(0xB3000000);
const Color black50OpacityColor = Color(0x80000000);
const Color lightRedColor = Color(0x0DFF0000);
const Color lightGreenColor = Color(0x0D067B96);
const Color lightOrangeColor = Color(0x0DF44336);
const Color lightYellowColor = Color(0x0DFFC107);

TextTheme appTextTheme = TextTheme(
  bodyLarge: TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    color: blackColor,
  ),
  bodyMedium: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12.sp,
    color: black50OpacityColor,
  ),
  bodySmall: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 10.sp,
    color: black80OpacityColor,
  ),
  labelSmall: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: blackColor,
  ),
  headlineLarge: TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12.sp, // 10 also needed
    color: whiteColor,
  ),
  headlineSmall: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 8.sp, // 14 also needed
    color: whiteColor, // primaryColor also needed
  ),
  displaySmall: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 8.sp,
    color: blackColor,
  ),
  titleMedium: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 10.sp,
    color: black80OpacityColor,
  ),
  labelLarge: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    color: primaryColor,
  ),
);
