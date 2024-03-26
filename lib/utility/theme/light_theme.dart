import 'package:flutter/material.dart';
import 'package:ui_demo/utility/color_code.dart';

ThemeData lightTheme = ThemeData(
  primaryColor: ColorCode.colorWhite,
  appBarTheme: AppBarTheme(backgroundColor: ColorCode.colorOfAppBar),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: ColorCode.colorWhite,
    selectedItemColor: ColorCode.colorOfAppBar,
    unselectedItemColor: ColorCode.colorGrey,
  ),
  textTheme: TextTheme(
    titleSmall: TextStyle(
      fontSize: 20,
      color: ColorCode.colorLightModePrimaryColor,
    ),
    titleMedium: TextStyle(
      fontSize: 15,
      color: ColorCode.colorBlack,
    ),
    bodySmall: TextStyle(
      fontSize: 15,
      color: ColorCode.colorBlack,
    ),
    displaySmall: TextStyle(
      fontSize: 15,
      color: ColorCode.colorWhite,
    ),
  ),
  dropdownMenuTheme: DropdownMenuThemeData(
    textStyle: TextStyle(color: ColorCode.colorBlack),
  ),
  iconTheme: IconThemeData(
    color: ColorCode.colorLightModePrimaryColor,
  ),
  cardColor: ColorCode.colorLightCardColor,
  tabBarTheme: TabBarTheme(
    labelColor: ColorCode.colorLightModePrimaryColor,
  ),
);
