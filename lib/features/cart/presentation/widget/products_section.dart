import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_theme.dart';
import '../../../../gen/assets.gen.dart';
import '../../../restaurant_details/presentation/pages/restaurant_details_view.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(top: 16.h, bottom: 16.h, start: 16.w),
          child: Text(
            "You might also like...",
            style: appTextTheme.bodyMedium!.copyWith(
              color: blackColor,
              fontSize: 16.sp,
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: 150.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsetsDirectional.only(end: 8.w),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return RestaurantDetailsView();
                        },
                      ));
                    },
                    child: SizedBox(
                      width: 114.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.r),
                              topRight: Radius.circular(4.r),
                            ),
                            child: Image.asset(
                              Assets.images.pizza.path,
                              width: 114.w,
                              height: 88.h,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 8.h,
                            ),
                            child: Text(
                              "Pizza King",
                              style: appTextTheme.titleMedium!.copyWith(
                                color: blackColor,
                              ),
                            ),
                          ),
                          Text(
                            "EGP 5.00",
                            style: appTextTheme.headlineLarge!.copyWith(
                              color: blackColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
