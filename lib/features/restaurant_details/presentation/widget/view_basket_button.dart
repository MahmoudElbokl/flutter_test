import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_theme.dart';
import '../../../cart/presentation/pages/cart_view.dart';

class ViewBasketButton extends StatelessWidget {
  const ViewBasketButton({required this.productQuantity, super.key});

  final ValueNotifier<num> productQuantity;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: productQuantity,
      builder: (_, value, __) {
        return Container(
          height: value == 0 ? 120.h : 80.h,
          width: MediaQuery.sizeOf(context).width,
          color: whiteColor,
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          child: Column(
            children: [
              if (value == 0) ...[
                Text(
                  "Add EGP 20.00 to start your order",
                  style: appTextTheme.bodySmall!.copyWith(
                    fontSize: 12.sp,
                  ),
                ),
                16.verticalSpace,
              ],
              SizedBox(
                height: 48.h,
                child: ElevatedButton(
                  onPressed: value == 0
                      ? null
                      : () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return CartView();
                              },
                            ),
                          );
                        },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.resolveWith<Color>(
                      (Set<WidgetState> states) {
                        if (states.contains(WidgetState.disabled))
                          return primaryColor.withOpacity(0.5);
                        return primaryColor; // Use the component's default.
                      },
                    ),
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
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.r),
                            color: whiteColor.withOpacity(0.05)),
                        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                        margin: EdgeInsetsDirectional.only(end: 8.w),
                        child: Text(
                          value.toString(),
                          style: appTextTheme.headlineSmall!.copyWith(
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "View basket",
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: appTextTheme.headlineSmall!.copyWith(
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ),
                      if (value > 0)
                        Text(
                          "EGP ${(value * 22).toStringAsFixed(2)}",
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: appTextTheme.headlineSmall!.copyWith(
                            fontSize: 14.sp,
                          ),
                        )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
