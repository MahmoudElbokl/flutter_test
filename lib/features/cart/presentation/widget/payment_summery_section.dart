import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_flutter/features/cart/presentation/widget/payment_info_item.dart';

import '../../../../core/app_theme.dart';

class PaymentSummerySection extends StatelessWidget {
  const PaymentSummerySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.w),
              child: Text(
                "Payment Summary",
                style: appTextTheme.bodyMedium!.copyWith(
                  color: blackColor,
                  fontSize: 16.sp,
                ),
              ),
            ),
            PaymentInfoItem(
              title: "Subtotal",
              price: "EGP 146.00",
            ),
            PaymentInfoItem(
              title: 'Free Delivery',
              price: 'EGP 15.00',
            ),
            PaymentInfoItem(
              title: 'Service In',
              price: 'EGP 7.30',
            ),
            PaymentInfoItem(
              title: 'Total Amount',
              price: 'EGP 153.30',
              isTotal: true,
            ),
          ],
        ),
      ),
    );
  }
}
