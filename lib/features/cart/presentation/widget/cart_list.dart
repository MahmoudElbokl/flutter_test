import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_theme.dart';
import 'cart_item.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      itemBuilder: (context, index) {
        return CartItem();
      },
      separatorBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Divider(
            color: blackColor.withOpacity(0.1),
          ),
        );
      },
    );
  }
}
