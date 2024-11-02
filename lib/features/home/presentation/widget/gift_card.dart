import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_theme.dart';

class GiftCard extends StatelessWidget {
  const GiftCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Free delivery, on us",
                style: appTextTheme.headlineLarge,
              ),
              Text(
                "A gift for your first order",
                style: appTextTheme.headlineSmall,
              ),
            ],
          ),
          Text(
            "Order now",
            style: appTextTheme.headlineLarge!.copyWith(
              fontSize: 10.sp,
            ),
          )
        ],
      ),
    );
  }
}
