import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/app_theme.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    this.label,
    required this.textEditingController,
    this.suffixWidget,
    this.prefixIcon,
    this.borderRadius,
    super.key,
  });

  final String? label;
  final TextEditingController textEditingController;
  final Widget? suffixWidget;
  final String? prefixIcon;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          borderRadius ?? 4.r,
        ),
        border: Border.all(
          color: blackColor.withOpacity(0.1),
          width: 1,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      child: TextFormField(
        controller: textEditingController,
        style: appTextTheme.headlineSmall,
        decoration: InputDecoration(
          filled: true,
          fillColor: whiteColor,
          labelStyle: appTextTheme.displayMedium,
          contentPadding: EdgeInsets.zero,
          border: InputBorder.none,
          labelText: label,
          suffixIcon: suffixWidget,
          suffixIconConstraints: BoxConstraints(
            maxHeight: 27.h,
            maxWidth: 50.w,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 27.h,
            maxWidth: 50.w,
          ),
        ),
      ),
    );
  }
}
