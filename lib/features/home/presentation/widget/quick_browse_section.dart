import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_theme.dart';
import '../../../../core/constants.dart';

class QuickBrowseSection extends StatelessWidget {
  const QuickBrowseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(top: 24.h, bottom: 16.h, start: 16.w),
          child: Text(
            "Quick Browse",
            style: appTextTheme.labelSmall,
          ),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: 86.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: browseTypes
                .map(
                  (type) => Container(
                    width: 124.w,
                    margin: EdgeInsetsDirectional.only(end: 8.w),
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    decoration: BoxDecoration(
                      color: type.color,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          type.image,
                          height: 24.h,
                          width: 24.w,
                        ),
                        8.verticalSpace,
                        Text(
                          type.name,
                          style: appTextTheme.labelSmall,
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
