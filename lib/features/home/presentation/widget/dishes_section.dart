import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_theme.dart';
import '../../../../core/constants.dart';

class DishesSection extends StatelessWidget {
  const DishesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(top: 27.h, bottom: 16.h, start: 16.w),
          child: Text(
            "Explore Dishes",
            style: appTextTheme.labelSmall,
          ),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: 86.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: categories
                .map(
                  (category) => Padding(
                    padding: EdgeInsetsDirectional.only(end: 8.w),
                    child: Column(
                      children: [
                        Container(
                          width: 64.w,
                          height: 64.h,
                          decoration: BoxDecoration(
                            color: categories.first == category ? lightRedColor : lightGreenColor,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            category.image,
                            width: 32.w,
                            height: 32.h,
                          ),
                        ),
                        Spacer(),
                        Text(
                          category.name,
                          style: appTextTheme.displaySmall,
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
