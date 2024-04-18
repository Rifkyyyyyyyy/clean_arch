import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pratice/v.1/common/style/color/theme_color.dart';
import 'package:pratice/v.1/common/style/fonts/theme_fonts.dart';

ThemeData themeData() {
  return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      scaffoldBackgroundColor: ColorsApp.body,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        systemOverlayStyle:  SystemUiOverlayStyle(
            statusBarColor: ColorsApp.body,
            statusBarBrightness: Brightness.dark,
            // systemNavigationBarColor: ColorsApp.body,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark),
        backgroundColor: ColorsApp.body,
        foregroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      textTheme: textThemeApp());
}
