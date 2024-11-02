import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_flutter/features/shared_widgets/custom_button.dart';

import '../../../../core/app_theme.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor.withOpacity(0.05),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Delivering to",
            style: appTextTheme.displaySmall!.copyWith(
              color: black80OpacityColor,
            ),
          ),
          2.verticalSpace,
          Row(
            children: [
              Text(
                "6th of October, Giza",
                style: appTextTheme.labelSmall,
              ),
              SizedBox(
                width: 4.w,
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                size: 16.r,
                color: black50OpacityColor,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 40.h, bottom: 4.h),
            child: Text(
              "Hey there!",
              style: appTextTheme.bodyLarge,
            ),
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.6,
            child: Text(
              "Log in or create an account for a faster ordering experience.",
              style: appTextTheme.bodySmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: CustomButton(
              title: "Sign up",
              onPress: () {},
            ),
          ),
        ],
      ),
    );
  }
}
