import 'package:flutter/material.dart';
import 'package:ui_demo/utility/color_code.dart';
import 'package:ui_demo/utility/theme/gradient_color.dart';
import 'package:ui_demo/widgets/main_tabbar_widget.dart';
import 'package:ui_demo/widgets/text_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildAppBarImage(),
        Container(
          width: double.maxFinite,
          padding: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            color: Theme.of(context).appBarTheme.backgroundColor,
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(24),
              top: Radius.zero,
            ),
          ),
          child: Column(
            children: [
              buildCard(),
              const MainTabBarWidget(),
            ],
          ),
        ),
        textWidget(context, "Match Info"),
        buildCardOfMatchInfo(),
        textWidget(context, "Videos"),
        buildVideoList(),
      ],
    );
  }

  buildVideoList() {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        itemBuilder: (context, index) {
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  "assets/football.jpg",
                ),
              ),
              Positioned(
                bottom: 5,
                left: 8,
                right: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Chalesea vs Man Utd FootBall Match",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style:
                          TextStyle(color: ColorCode.colorWhite, fontSize: 12),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sports",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                              color: ColorCode.colorWhite, fontSize: 10),
                        ),
                        Text(
                          "04:30",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                              color: ColorCode.colorWhite, fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemCount: 5,
      ),
    );
  }

  Card buildCardOfMatchInfo() {
    return Card(
      color: Theme.of(context).primaryColor,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildIconWithText(Icons.calendar_month, "27 Oct 2023"),
                  const SizedBox(height: 10),
                  buildIconWithText(
                      Icons.accessibility_new_sharp, "Michael Oliver"),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildIconWithText(Icons.people, "Bramail Lane"),
                  const SizedBox(height: 10),
                  buildIconWithText(Icons.event_seat_rounded, "Bramail Lane"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildIconWithText(IconData icon, String title) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 8),
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }

  buildCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      decoration: BoxDecoration(
        gradient: getCardGradientColor(context),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 120,
            child: Icon(
              Icons.access_time_outlined,
              size: 70,
              color: ColorCode.colorBlack.withOpacity(0.2),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildCardLogoWithText("assets/chelsea.png", "Chelsea"),
              Column(
                children: [
                  Text(
                    "63:26'",
                    style: TextStyle(
                      fontSize: 16,
                      color: ColorCode.colorWhite,
                    ),
                  ),
                  Text(
                    "0-1",
                    style: TextStyle(
                      fontSize: 24,
                      color: ColorCode.colorWhite,
                    ),
                  ),
                ],
              ),
              buildCardLogoWithText("assets/man_utd.png", "Man Utd")
            ],
          ),
        ],
      ),
    );
  }

  Column buildCardLogoWithText(String image, String title) {
    return Column(
      children: [
        Image.asset(
          image,
          height: 50,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            color: ColorCode.colorWhite,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Stack buildAppBarImage() {
    return Stack(
      children: [
        Image.asset("assets/football.jpg"),
        Positioned(
          top: 45,
          left: 16,
          right: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.arrow_back,
                color: ColorCode.colorWhite,
              ),
              Icon(
                Icons.zoom_out_map,
                color: ColorCode.colorWhite,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
