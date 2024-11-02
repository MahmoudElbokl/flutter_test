import 'package:test_flutter/core/app_theme.dart';
import 'package:test_flutter/core/shared_models/browse_types.dart';
import 'package:test_flutter/core/shared_models/category_model.dart';

import '../gen/assets.gen.dart';

List<CategoryModel> categories = [
  CategoryModel(
    name: "Noodles",
    image: Assets.images.ramen.path,
  ),
  CategoryModel(
    name: "Grilled Chicken",
    image: Assets.images.chicken.path,
  ),
  CategoryModel(
    name: "Pasta",
    image: Assets.images.spaghetti.path,
  ),
  CategoryModel(
    name: "Sushi",
    image: Assets.images.sushi.path,
  ),
  CategoryModel(
    name: "Salads",
    image: Assets.images.salad.path,
  ),
];

List<BrowseTypes> browseTypes = [
  BrowseTypes(
    name: "Food offers",
    image: Assets.icons.discount.path,
  ),
  BrowseTypes(
    name: "Top-Rated",
    image: Assets.icons.star.path,
    color: lightYellowColor,
  ),
  BrowseTypes(
    name: "Live Tracking",
    image: Assets.icons.location.path,
  ),
];
