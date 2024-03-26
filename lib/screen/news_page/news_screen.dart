import 'package:flutter/material.dart';
import 'package:ui_demo/utility/color_code.dart';
import 'package:ui_demo/widgets/appbar_with_card_widget.dart';
import 'package:ui_demo/widgets/dorpdown_button_widget.dart';
import 'package:ui_demo/screen/news_page/widgets/live_matches_card_widget.dart';
import 'package:ui_demo/widgets/other_matches_card_widget.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const AppBarWithCardWidget(
          cardCenterTitleText: "03:00 PM",
          cardCenterSubTitleText: "23 Oct 23'",
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 24, bottom: 8),
                  child: Text(
                    "Live Matches",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                buildLiveMatchCardList(),
                Card(
                  color: Theme.of(context).cardColor,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildDate(21, "Sat"),
                        buildDate(22, "Sun"),
                        buildDate(23, "Mon", true),
                        buildDate(24, "Tue"),
                        buildDate(25, "Wed"),
                        buildDate(26, "Thu"),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.calendar_month),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Other Matches",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const DropDownButtonWidget(),
                    ],
                  ),
                ),
                buildOtherMatchList()
              ],
            ),
          ),
        )
      ],
    );
  }

  Container buildDate(int day, String weekday, [bool isSelected = false]) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      decoration: BoxDecoration(
        color:
            isSelected ? const Color(0xFF6644b8) : ColorCode.colorTransparent,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Text(
            "$day",
            style: TextStyle(
              color: isSelected ? ColorCode.colorWhite : ColorCode.colorBlack,
            ),
          ),
          Divider(
            color: ColorCode.colorBlack,
            thickness: 2,
          ),
          Text(
            weekday,
            style: TextStyle(
              color: isSelected ? ColorCode.colorWhite : ColorCode.colorBlack,
            ),
          )
        ],
      ),
    );
  }

  buildOtherMatchList() {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const OtherMatchesCardWidget();
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 10);
      },
      itemCount: 3,
    );
  }

  SizedBox buildLiveMatchCardList() {
    return SizedBox(
      height: 220,
      child: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const LiveMatchesCardWidget();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 16);
        },
        itemCount: 5,
      ),
    );
  }
}
