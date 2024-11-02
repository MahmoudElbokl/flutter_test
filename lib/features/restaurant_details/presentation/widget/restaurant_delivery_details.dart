import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_theme.dart';
import '../../../../gen/assets.gen.dart';
import 'custom_divider.dart';
import 'delivery_details_item.dart';

class RestaurantDeliveryDetails extends StatelessWidget {
  const RestaurantDeliveryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      width: MediaQuery.sizeOf(context).width,
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.all(
            Radius.circular(8.r),
          ),
          border: Border.all(
            color: blackColor.withOpacity(0.1),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.r),
                  ),
                  child: Image.asset(
                    Assets.images.pizza.path,
                    width: 48.w,
                    height: 48.h,
                    fit: BoxFit.fill,
                  ),
                ),
                8.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 2.h,
                      ),
                      child: Text(
                        "Pizza King",
                        style: appTextTheme.bodyMedium!.copyWith(
                          color: blackColor,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Text(
                      "pizza, pasta",
                      style: appTextTheme.displaySmall,
                    ),
                    6.verticalSpace,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          Assets.icons.star.path,
                          width: 14.w,
                          height: 16.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.w),
                          child: Text(
                            "4.5",
                            style: appTextTheme.bodySmall!.copyWith(
                              color: blackColor,
                            ),
                          ),
                        ),
                        Text(
                          "(100+)",
                          style: appTextTheme.bodySmall!.copyWith(
                            color: black50OpacityColor,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            16.verticalSpace,
            Row(
              children: [
                DeliveryDetailsItem(title: "Delivery in", value: "Free"),
                CustomDivider(),
                DeliveryDetailsItem(title: "Delivery time", value: "Free"),
                CustomDivider(),
                DeliveryDetailsItem(title: "36 mins", value: "Free"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
