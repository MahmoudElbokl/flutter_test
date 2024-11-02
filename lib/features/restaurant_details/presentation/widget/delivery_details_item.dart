import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_theme.dart';

class DeliveryDetailsItem extends StatelessWidget {
  const DeliveryDetailsItem({
    required this.title,
    required this.value,
    super.key,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            title,
            style: appTextTheme.bodyMedium!.copyWith(
              fontSize: 10.sp,
            ),
          ),
          4.verticalSpace,
          Text(
            value,
            style: appTextTheme.headlineLarge!.copyWith(
              color: black70OpacityColor,
              fontSize: 10.sp,
            ),
          )
        ],
      ),
    );
  }
}
