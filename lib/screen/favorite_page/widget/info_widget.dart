import 'package:flutter/material.dart';
import 'package:ui_demo/utility/color_code.dart';
import 'package:ui_demo/widgets/text_widget.dart';

class InfoWidget extends StatefulWidget {
  const InfoWidget({super.key});

  @override
  State<InfoWidget> createState() => _InfoWidgetState();
}

class _InfoWidgetState extends State<InfoWidget> {
  List<List<String>> infoDetails = [
    ["Coach", "Mauricio Pochettino"],
    ["Foundation Date", "10 March 1950"],
    ["Country", "England"],
  ];
  List<List<String>> venueDetails = [
    ["Stadium", "Stamford Bridge"],
    ["Capacity", "41837"],
    ["Country", "England"],
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildCardOfPlayer(),
          textWidget(context, "Info"),
          buildListCard(infoDetails),
          textWidget(context, "Venue"),
          buildListCard(venueDetails),
        ],
      ),
    );
  }

  buildListCard(List<List<String>> list) {
    return Card(
      color: Theme.of(context).cardColor,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return buildInfoDetails(list[index][0], list[index][1]);
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: ColorCode.colorBlack,
            height: 24,
          );
        },
        itemCount: list.length,
      ),
    );
  }

  buildInfoDetails(String title, String info) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: Theme.of(context).textTheme.bodySmall!.color,
          ),
        ),
        Text(
          info,
          style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).textTheme.bodySmall!.color,
          ),
        ),
      ],
    );
  }

  Card buildCardOfPlayer() {
    return Card(
      color: Theme.of(context).cardColor,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.people_outline,
                  size: 40,
                  color: Theme.of(context).iconTheme.color,
                ),
                buildCircularProgressIndicator(0.8),
                buildCircularProgressIndicator(0.4),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildTextOfNumberPlayer(30),
                buildTextOfNumberPlayer(20),
                buildTextOfNumberPlayer(30),
              ],
            ),
            Row(
              children: [
                buildPlayerDesc("Top Player"),
                buildPlayerDesc("Foreign Player"),
                buildPlayerDesc("National Team Player"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  buildPlayerDesc(String message) {
    return Expanded(
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }

  Expanded buildTextOfNumberPlayer(int value) {
    return Expanded(
      child: Text(
        "$value",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 28,
          color: Theme.of(context).textTheme.titleSmall!.color,
        ),
      ),
    );
  }

  CircularProgressIndicator buildCircularProgressIndicator(double value) {
    return MediaQuery.of(context).platformBrightness == Brightness.light
        ? CircularProgressIndicator(
            value: value,
            backgroundColor: ColorCode.colorBlack.withOpacity(0.2),
            color: const Color(0xFF6644b8),
          )
        : CircularProgressIndicator(
            value: value,
            backgroundColor: ColorCode.colorWhite,
            color: const Color(0xFF2148f7),
          );
  }
}
