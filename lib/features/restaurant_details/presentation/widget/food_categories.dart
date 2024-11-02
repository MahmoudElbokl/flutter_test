import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'food_category_item.dart';

class FoodCategories extends StatelessWidget {
  const FoodCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.menu,
            size: 16,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: FoodCategoryItem(
              title: "Appetizers",
              isSelected: true,
            ),
          ),
          FoodCategoryItem(
            title: "Cheese Manakish",
            isSelected: false,
          ),
          16.horizontalSpace,
          FoodCategoryItem(
            title: "Pizza",
            isSelected: false,
          ),
        ],
      ),
    );
  }
}
