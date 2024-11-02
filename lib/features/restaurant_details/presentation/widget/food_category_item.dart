import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_theme.dart';

class FoodCategoryItem extends StatelessWidget {
  const FoodCategoryItem({
    required this.title,
    required this.isSelected,
    super.key,
  });

  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: appTextTheme.titleMedium!.copyWith(
            color: isSelected ? primaryColor : black80OpacityColor,
          ),
        ),
        8.verticalSpace,
        Container(
          width: 56.w,
          height: 4.h,
          decoration: BoxDecoration(
            color: isSelected ? primaryColor : Colors.transparent,
          ),
        )
      ],
    );
  }
}
