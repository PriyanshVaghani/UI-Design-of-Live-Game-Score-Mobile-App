import 'package:flutter/material.dart';
import 'package:ui_demo/utility/color_code.dart';
import 'package:ui_demo/utility/theme/gradient_color.dart';

class MainTabBarWidget extends StatelessWidget {
  const MainTabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> tabOption = [
      "Info",
      "Premier League",
      "Status",
      "Seria A",
      "Euro",
      "La Liga",
    ];
    return DefaultTabController(
      length: tabOption.length,
      child: TabBar(
        padding: EdgeInsets.zero,
        isScrollable: true,
        indicatorColor: const Color(0xFF17082a),
        indicatorSize: TabBarIndicatorSize.label,
        dividerHeight: 0,
        tabs: tabOption
            .map(
              (e) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  gradient: tabOption.indexOf(e) == 0
                      ? getCardGradientColor(context)
                      : null,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: ColorCode.colorPurple, width: 2),
                ),
                child: Text(
                  e,
                  style: TextStyle(color: ColorCode.colorWhite),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
