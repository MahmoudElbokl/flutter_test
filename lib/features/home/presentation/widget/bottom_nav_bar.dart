import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../gen/assets.gen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.icons.home.path,
            height: 24.h,
            width: 24.w,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.icons.search.path,
            height: 24.h,
            width: 24.w,
          ),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.icons.receipt.path,
            height: 24.h,
            width: 24.w,
          ),
          label: "Orders",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.icons.user.path,
            height: 24.h,
            width: 24.w,
          ),
          label: "Account",
        ),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
