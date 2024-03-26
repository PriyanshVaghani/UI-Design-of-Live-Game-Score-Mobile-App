import 'package:flutter/material.dart';
import 'package:ui_demo/screen/navigation_bar_screen.dart';
import 'package:ui_demo/utility/theme/dark_theme.dart';
import 'package:ui_demo/utility/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const NavigationBarScreen(),
    );
  }
}
