import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/app_theme.dart';
import '../../../../gen/assets.gen.dart';

class AddProductBottomSheet extends StatelessWidget {
  AddProductBottomSheet({super.key});

  final ValueNotifier<int> quantity = ValueNotifier(1);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 340.h,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                Assets.images.pizza.path,
              ),
              fit: BoxFit.fill,
            )),
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 16.h, left: 16.w),
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: CircleAvatar(
                    radius: 16.r,
                    backgroundColor: whiteColor,
                    child: Icon(
                      Icons.close,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 16.h, bottom: 4.h),
                  child: Text(
                    "Pizza King",
                    style: appTextTheme.bodyMedium!.copyWith(
                      color: blackColor,
                    ),
                  ),
                ),
                Text(
                  "Lorem ipsum dolor sit amet consectetur. Sit enim in sit purus justo pellentesque amet.",
                  style: appTextTheme.displaySmall,
                ),
                16.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "egp 22.00",
                      style: appTextTheme.bodyMedium!.copyWith(
                        color: black80OpacityColor,
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          splashFactory: NoSplash.splashFactory,
                          onTap: () {
                            if (quantity.value > 1) {
                              quantity.value--;
                            }
                          },
                          child: Container(
                            width: 32.w,
                            height: 32.h,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: blackColor.withOpacity(0.1),
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: whiteColor,
                              child: SvgPicture.asset(
                                Assets.icons.subtract.path,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: ValueListenableBuilder(
                            valueListenable: quantity,
                            builder: (_, productQuantity, __) {
                              return Text(
                                productQuantity.toString(),
                                style: appTextTheme.bodyMedium!.copyWith(
                                  color: black80OpacityColor,
                                ),
                              );
                            },
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            quantity.value++;
                          },
                          child: CircleAvatar(
                            radius: 16.r,
                            backgroundColor: primaryColor,
                            child: SvgPicture.asset(
                              Assets.icons.add.path,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.h, bottom: 16.h),
                  child: SizedBox(
                    height: 48.h,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context, quantity.value);
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(primaryColor),
                        shape: WidgetStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                        ),
                        padding: WidgetStateProperty.all<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 16.w),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Add to basket",
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: appTextTheme.headlineSmall!.copyWith(
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                          ValueListenableBuilder(
                            valueListenable: quantity,
                            builder: (_, productQuantity, __) {
                              return Text(
                                "EGP ${(productQuantity * 22).toStringAsFixed(2)}",
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: appTextTheme.headlineSmall!.copyWith(
                                  fontSize: 14.sp,
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
