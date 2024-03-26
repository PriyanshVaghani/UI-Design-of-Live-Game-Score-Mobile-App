import 'package:flutter/material.dart';
import 'package:ui_demo/utility/color_code.dart';
import 'package:ui_demo/utility/theme/gradient_color.dart';
import 'package:ui_demo/widgets/main_tabbar_widget.dart';

class AppBarWithCardWidget extends StatefulWidget {
  const AppBarWithCardWidget(
      {super.key,
      this.isButton = false,
      this.isTabBar = false,
      required this.cardCenterTitleText,
      required this.cardCenterSubTitleText});
  final bool isButton;
  final bool isTabBar;
  final String cardCenterTitleText;
  final String cardCenterSubTitleText;
  @override
  State<AppBarWithCardWidget> createState() => _AppBarWithCardWidgetState();
}

class _AppBarWithCardWidgetState extends State<AppBarWithCardWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.isTabBar ? 330 : 300,
      child: Stack(
        children: [
          buildAppbar(),
          Positioned(
            left: 24,
            right: 24,
            top: 100,
            child: buildCard(),
          )
        ],
      ),
    );
  }

  Container buildAppbar() {
    return Container(
      padding: const EdgeInsets.only(top: 45),
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        color: Theme.of(context).appBarTheme.backgroundColor,
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(24),
        ),
      ),
      alignment: AlignmentDirectional.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: ColorCode.colorWhite,
            ),
          ),
          Text(
            "ScoreCraze",
            style: TextStyle(fontSize: 24, color: ColorCode.colorWhite),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: ColorCode.colorWhite,
            ),
          ),
        ],
      ),
    );
  }

  buildCard() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        widget.isTabBar ? const MainTabBarWidget() : const SizedBox(),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            gradient: getCardGradientColor(context),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Stack(
            children: [
              Center(
                child: Icon(
                  Icons.access_time_outlined,
                  size: 150,
                  color: ColorCode.colorBlack.withOpacity(0.2),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    child: widget.isButton
                        ? buildLiveButton()
                        : buildCenterTitle(),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 24, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildCardLogoWithText("assets/chelsea.png", "Chelsea"),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.cardCenterTitleText,
                              style: TextStyle(
                                fontSize: 24,
                                color: ColorCode.colorWhite,
                              ),
                            ),
                            Text(
                              widget.cardCenterSubTitleText,
                              style: TextStyle(
                                fontSize: 16,
                                color: ColorCode.colorWhite,
                              ),
                            ),
                          ],
                        ),
                        buildCardLogoWithText("assets/man_utd.png", "Man Utd")
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  InkWell buildLiveButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: ColorCode.colorWhite,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          "Live",
          style: TextStyle(
            fontSize: 15,
            color: ColorCode.colorBlack,
          ),
        ),
      ),
    );
  }

  Center buildCenterTitle() {
    return Center(
      child: Text(
        "Premier League",
        style: TextStyle(
          fontSize: 24,
          color: ColorCode.colorWhite,
        ),
      ),
    );
  }

  Widget buildCardLogoWithText(String image, String title) {
    return Column(
      children: [
        Image.asset(
          image,
          height: 80,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            color: ColorCode.colorWhite,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
