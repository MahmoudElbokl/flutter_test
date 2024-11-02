import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_theme.dart';

class PaymentInfoItem extends StatelessWidget {
  const PaymentInfoItem({
    required this.title,
    required this.price,
    this.isTotal = false,
    super.key,
  });

  final String title;
  final String price;
  final bool isTotal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: appTextTheme.titleMedium!.copyWith(
              color: blackColor,
              fontSize: isTotal ? 12.sp : 10.sp,
            ),
          ),
          Text(
            price,
            style: appTextTheme.titleMedium!.copyWith(
              color: blackColor,
              fontSize: isTotal ? 12.sp : 10.sp,
            ),
          ),
        ],
      ),
    );
  }
}
