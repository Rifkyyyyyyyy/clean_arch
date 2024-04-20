import 'package:flutter/material.dart';

import '../color/theme_color.dart';

TextTheme textThemeApp() {
  return const TextTheme(
    displayLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      color: ColorsApp.mainText,
      fontFamily: 'Helvetica',
      height: 1.5
    ),
    displayMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: ColorsApp.mainText,
      fontFamily: 'Helvetica',
      height: 1.5
    ),
    displaySmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w300, 
      color: ColorsApp.mainText,
      fontFamily: 'Helvetica',
      height: 1.5
    ),
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w800,
      color: ColorsApp.mainText,
      fontFamily: 'Helvetica',
      height: 1.5
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: ColorsApp.mainText,
      fontFamily: 'Helvetica',
      height: 1.5
    ),
    titleSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w300,
      color: ColorsApp.mainText,
      fontFamily: 'Helvetica',
      height: 1.5
    ),
  );
}
