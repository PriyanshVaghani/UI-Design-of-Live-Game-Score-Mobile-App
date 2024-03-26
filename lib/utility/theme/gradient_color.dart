import 'package:flutter/material.dart';
import 'package:ui_demo/utility/color_code.dart';
import 'package:ui_demo/utility/utility.dart';

LinearGradient darkModeBgGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    ColorCode.colorDarkModeBgGradient1,
    ColorCode.colorDarkModeBgGradient2,
    ColorCode.colorDarkModeBgGradient3,
  ],
);

LinearGradient lightModeBgGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    ColorCode.colorWhite,
    ColorCode.colorWhite,
    ColorCode.colorWhite,
  ],
);

LinearGradient getBgGradientColor(BuildContext context) {
  return Utility.isDarkMode(context) ? darkModeBgGradient : lightModeBgGradient;
}

LinearGradient darkCardGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    ColorCode.colorDarkModeCardGradient1,
    ColorCode.colorDarkModeCardGradient2,
  ],
);

LinearGradient lightCardGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    ColorCode.colorLightModePrimaryColor,
    ColorCode.colorLightModePrimaryColor,
  ],
);

LinearGradient getCardGradientColor(BuildContext context) {
  return Utility.isDarkMode(context) ? darkCardGradient : lightCardGradient;
}

LinearGradient getFloatingButtonGradientColor(BuildContext context) {
  return Utility.isDarkMode(context) ? darkModeBgGradient : lightCardGradient;
}
