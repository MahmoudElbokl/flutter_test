import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/app_theme.dart';
import '../../../../gen/assets.gen.dart';
import '../../../restaurant_details/presentation/pages/restaurant_details_view.dart';

class PopularSection extends StatelessWidget {
  const PopularSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(top: 24.h, bottom: 16.h, start: 16.w),
          child: Text(
            "Popular today",
            style: appTextTheme.labelSmall,
          ),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: 140.h,
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
                              vertical: 4.h,
                            ),
                            child: Text(
                              "Pizza King",
                              style: appTextTheme.bodyMedium!.copyWith(
                                color: black80OpacityColor,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                Assets.icons.clock.path,
                                width: 14.w,
                                height: 14.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 2.w),
                                child: Text(
                                  "36 mins",
                                  style: appTextTheme.bodySmall!.copyWith(
                                    color: black50OpacityColor,
                                  ),
                                ),
                              ),
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
