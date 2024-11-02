import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/app_theme.dart';
import '../../../../gen/assets.gen.dart';
import '../../../shared_widgets/custom_button.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pizza",
                  style: appTextTheme.bodyLarge,
                ),
                4.verticalSpace,
                Text(
                  "Closed",
                  style: appTextTheme.bodyMedium!.copyWith(
                    color: black70OpacityColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 11.h),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        Assets.icons.edit.path,
                        width: 14.w,
                        height: 14.h,
                      ),
                      2.horizontalSpace,
                      Text(
                        "Edit",
                        style: appTextTheme.bodyMedium!.copyWith(
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "EGP ",
                        style: appTextTheme.bodySmall!.copyWith(
                          color: black50OpacityColor,
                        ),
                      ),
                      TextSpan(
                        text: "22.00",
                        style: appTextTheme.headlineLarge!.copyWith(
                          color: blackColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
        16.verticalSpace,
        CustomButton(
          title: "",
          onPress: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.icons.delete.path,
                width: 16.w,
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  "1",
                  style: appTextTheme.headlineSmall!.copyWith(
                    fontSize: 14.sp,
                  ),
                ),
              ),
              SvgPicture.asset(
                Assets.icons.add.path,
                width: 16.w,
                height: 16.h,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
