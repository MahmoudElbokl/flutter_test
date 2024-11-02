import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/bottom_nav_bar.dart';
import '../widget/dishes_section.dart';
import '../widget/gift_card.dart';
import '../widget/popular_section.dart';
import '../widget/quick_browse_section.dart';
import '../widget/restaurant_may_know_section.dart';
import '../widget/welcome_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomeCard(),
              DishesSection(),
              QuickBrowseSection(),
              RestaurantMayKnowSection(),
              24.verticalSpace,
              GiftCard(),
              PopularSection(),
              24.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
