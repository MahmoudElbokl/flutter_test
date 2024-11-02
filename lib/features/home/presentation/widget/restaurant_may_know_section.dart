import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_theme.dart';
import '../../../../gen/assets.gen.dart';
import '../../../restaurant_details/presentation/pages/restaurant_details_view.dart';

class RestaurantMayKnowSection extends StatelessWidget {
  const RestaurantMayKnowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(top: 24.h, bottom: 16.h, start: 16.w),
          child: Text(
            "Restaurants you know",
            style: appTextTheme.labelSmall,
          ),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: 212.h,
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
                      width: 156.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.r),
                              topRight: Radius.circular(8.r),
                            ),
                            child: Image.asset(
                              Assets.images.pizza.path,
                              width: 156.w,
                              height: 130.h,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 8.h,
                              bottom: 4.h,
                            ),
                            child: Text(
                              "Pizza King",
                              style: appTextTheme.bodyMedium!.copyWith(
                                color: black80OpacityColor,
                              ),
                            ),
                          ),
                          Text(
                            "pizza, pasta",
                            style: appTextTheme.displaySmall,
                          ),
                          4.verticalSpace,
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
