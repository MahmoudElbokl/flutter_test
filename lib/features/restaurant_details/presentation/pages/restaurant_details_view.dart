import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_flutter/core/app_theme.dart';
import 'package:test_flutter/features/restaurant_details/presentation/widget/appetizers_section.dart';
import 'package:test_flutter/features/restaurant_details/presentation/widget/cheese_section.dart';

import '../../../../gen/assets.gen.dart';
import '../widget/food_categories.dart';
import '../widget/restaurant_delivery_details.dart';
import '../widget/view_basket_button.dart';

class RestaurantDetailsView extends StatelessWidget {
  RestaurantDetailsView({super.key});

  final ValueNotifier<num> productQuantity = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: ViewBasketButton(
          productQuantity: productQuantity,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 280.h,
                child: Stack(
                  children: [
                    Image.asset(
                      Assets.images.pizza.path,
                      height: 213.h,
                      width: MediaQuery.sizeOf(context).width,
                      fit: BoxFit.fill,
                    ),
                    PositionedDirectional(
                      top: 8.h,
                      width: MediaQuery.sizeOf(context).width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              behavior: HitTestBehavior.translucent,
                              child: CircleAvatar(
                                radius: 16.r,
                                backgroundColor: whiteColor,
                                child: Icon(
                                  Icons.arrow_back,
                                  color: blackColor,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 16.r,
                              backgroundColor: whiteColor,
                              child: SvgPicture.asset(
                                Assets.icons.search.path,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    RestaurantDeliveryDetails(),
                  ],
                ),
              ),
              FoodCategories(),
              AppetizersSection(
                onQuantityChange: (num? value) {
                  if (value != null) {
                    productQuantity.value = value;
                  }
                },
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 8.h,
                color: blackColor.withOpacity(0.1),
              ),
              CheeseSection(onQuantityChange: (num? value) {
                if (value != null) {
                  productQuantity.value = value;
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
