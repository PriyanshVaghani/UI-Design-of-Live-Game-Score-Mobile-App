import 'package:flutter/material.dart';

class Utility {
  static bool isDarkMode(BuildContext context) =>
      MediaQuery.of(context).platformBrightness == Brightness.dark;
}
