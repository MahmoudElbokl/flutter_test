import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_theme.dart';
import '../../../shared_widgets/custom_button.dart';

class CheckoutAndAddItemsButtons extends StatelessWidget {
  const CheckoutAndAddItemsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: WidgetStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                padding: WidgetStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 16.w),
                ),
              ),
              child: Text(
                "Add Items",
                textAlign: TextAlign.center,
                style: appTextTheme.labelLarge,
              ),
            ),
          ),
          16.horizontalSpace,
          Expanded(
            child: CustomButton(
              title: "Checkout",
              onPress: () {},
              style: appTextTheme.labelLarge!.copyWith(color: whiteColor),
            ),
          ),
        ],
      ),
    );
  }
}
