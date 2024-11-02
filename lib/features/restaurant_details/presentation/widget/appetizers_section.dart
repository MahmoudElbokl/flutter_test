import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_theme.dart';
import '../../../../gen/assets.gen.dart';
import 'add_product_bottom_sheet.dart';

class AppetizersSection extends StatelessWidget {
  const AppetizersSection({required this.onQuantityChange, super.key});

  final Function(num?) onQuantityChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Appetizers",
            style: appTextTheme.bodyLarge,
          ),
          ListView.separated(
            itemCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(vertical: 16.h),
            itemBuilder: (context, index) {
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return AddProductBottomSheet();
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(16.r),
                      ),
                    ),
                    isScrollControlled: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                  ).then(
                    (value) {
                      onQuantityChange(value);
                    },
                  );
                },
                child: SizedBox(
                  height: 88.h,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pizza King",
                              style: appTextTheme.bodyMedium!.copyWith(
                                color: blackColor,
                              ),
                            ),
                            2.verticalSpace,
                            Text(
                              "Lorem ipsum dolor sit amet consectetur. Sit enim in sit purus justo pellentesque amet.",
                              style: appTextTheme.displaySmall,
                            ),
                            Spacer(),
                            Text(
                              "egp 22.00",
                              style: appTextTheme.bodyMedium!.copyWith(
                                color: black80OpacityColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      16.horizontalSpace,
                      ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4.r),
                        ),
                        child: Image.asset(
                          Assets.images.pizza.path,
                          width: 88.w,
                          height: 88.h,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: Divider(
                  color: blackColor.withOpacity(0.1),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
