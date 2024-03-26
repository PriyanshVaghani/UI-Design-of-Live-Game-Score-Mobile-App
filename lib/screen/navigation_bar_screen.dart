import 'package:flutter/material.dart';
import 'package:ui_demo/screen/favorite_page/favorite_screen.dart';
import 'package:ui_demo/screen/home_page/home_screen.dart';
import 'package:ui_demo/screen/profile_page/profile_screen.dart';
import 'package:ui_demo/screen/news_page/news_screen.dart';
import 'package:ui_demo/utility/color_code.dart';
import 'package:ui_demo/utility/theme/gradient_color.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int currentIndex = 0;

  final List _pages = [
    const HomeScreen(),
    const NewsScreen(),
    const FavoriteScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).primaryColor,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: ColorCode.colorBlack,
              offset: const Offset(0, -1),
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor:
              Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          selectedItemColor:
              Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          unselectedItemColor:
              Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label: "News",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
      body: Container(
        // this for back ground color
        decoration: BoxDecoration(
          gradient: getBgGradientColor(context),
        ),
        child: _pages[currentIndex],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 65,
        decoration: BoxDecoration(
          gradient: getFloatingButtonGradientColor(context),
          shape: BoxShape.circle,
        ),
        child: FloatingActionButton.large(
          backgroundColor: ColorCode.colorTransparent,
          onPressed: () {},
          shape: const CircleBorder(),
          child: Icon(
            Icons.sports_basketball_outlined,
            color: ColorCode.colorWhite,
            size: 40,
          ),
        ),
      ),
    );
  }
}
