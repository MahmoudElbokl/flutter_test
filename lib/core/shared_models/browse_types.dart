import 'package:flutter/material.dart';

import '../app_theme.dart';

class BrowseTypes {
  BrowseTypes({
    required this.name,
    required this.image,
    this.color = lightOrangeColor,
  });

  String name;
  String image;
  Color color;
}
