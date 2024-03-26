import 'package:flutter/material.dart';
import 'package:ui_demo/utility/color_code.dart';
import 'package:ui_demo/widgets/appbar_with_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double appBarHeight = 300;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppBarWithCardWidget(
          isButton: true,
          cardCenterTitleText: "0-1",
          cardCenterSubTitleText: "33.06'",
        ),
        padding: cons
        const SizedBox(height: 10),
        buildLiveWatchMatchButton(),
        Padding(t EdgeInsets.only(top: 16, left: 24, bottom: 8),
          child: Text(
            "Summary",
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        buildSummeryList(),
      ],
    );
  }

  Widget buildSummeryList() {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: ColorCode.colorTransparent,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(18),
            bottom: Radius.zero,
          ),
          border: Border(
            bottom: BorderSide.none,
            top: BorderSide(color: ColorCode.colorBlack, width: 2),
            left: BorderSide(color: ColorCode.colorBlack, width: 2),
            right: BorderSide(color: ColorCode.colorBlack, width: 2),
          ),
        ),
        child: ListView.separated(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Text(
                    "38'",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "L.Thomas",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Text(
                          "0-1",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const Icon(Icons.sports_baseball),
                        Text(
                          "L.Thomas",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: ColorCode.colorBlack,
            );
          },
        ),
      ),
    );
  }

  Center buildLiveWatchMatchButton() {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            fixedSize: Size(MediaQuery.of(context).size.width - 48, 42),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.live_tv,
              color: ColorCode.colorWhite,
            ),
            const SizedBox(width: 10),
            Text(
              "Live Watch Match",
              style: TextStyle(fontSize: 16, color: ColorCode.colorWhite),
            ),
          ],
        ),
      ),
    );
  }
}
