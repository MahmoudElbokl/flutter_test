import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_flutter/core/app_theme.dart';

import '../widget/cart_list.dart';
import '../widget/checkout_and_add_items_buttons.dart';
import '../widget/payment_summery_section.dart';
import '../widget/products_section.dart';
import '../widget/voucher_code_section.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: CheckoutAndAddItemsButtons(),
          appBar: AppBar(
            titleSpacing: 0,
            backgroundColor: whiteColor,
            elevation: 0,
            surfaceTintColor: whiteColor,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Basket",
                  style: appTextTheme.bodyMedium!.copyWith(
                    color: blackColor,
                  ),
                ),
                Text(
                  "Pizza King",
                  style: appTextTheme.bodySmall!.copyWith(
                    color: black50OpacityColor,
                  ),
                )
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CartList(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Divider(
                    color: blackColor.withOpacity(0.1),
                  ),
                ),
                ProductsSection(),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 8.h,
                  color: blackColor.withOpacity(0.1),
                ),
                VoucherCodeSection(),
                Container(
                  margin: EdgeInsets.only(top: 16.h),
                  width: MediaQuery.sizeOf(context).width,
                  height: 8.h,
                  color: blackColor.withOpacity(0.1),
                ),
                PaymentSummerySection(),
                38.verticalSpace,
              ],
            ),
          )),
    );
  }
}
