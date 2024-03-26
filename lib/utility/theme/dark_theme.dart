import 'package:flutter/material.dart';
import 'package:ui_demo/utility/color_code.dart';

ThemeData darkTheme = ThemeData(
  primaryColor: ColorCode.colorTransparent,
  cardColor: ColorCode.colorTransparent,
  appBarTheme: AppBarTheme(
    backgroundColor: ColorCode.colorOfAppBar,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: ColorCode.colorOfAppBar,
    selectedItemColor: ColorCode.colorWhite,
    unselectedItemColor: ColorCode.colorGrey,
  ),
  textTheme: TextTheme(
    titleSmall: TextStyle(
      fontSize: 20,
      color: ColorCode.colorWhite,
    ),
    titleMedium: TextStyle(
      fontSize: 15,
      color: ColorCode.colorLightModePrimaryColor,
    ),
    bodySmall: TextStyle(
      fontSize: 15,
      color: ColorCode.colorWhite,
    ),
    displaySmall: TextStyle(
      fontSize: 15,
      color: ColorCode.colorWhite,
    ),
  ),
  dropdownMenuTheme: DropdownMenuThemeData(
    textStyle: TextStyle(color: ColorCode.colorWhite),
  ),
  iconTheme: IconThemeData(
    color: ColorCode.colorWhite,
  ),
  tabBarTheme: TabBarTheme(
    labelColor: ColorCode.colorWhite,
  ),
);
