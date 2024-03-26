import 'package:flutter/material.dart';
import 'package:ui_demo/utility/color_code.dart';
import 'package:ui_demo/utility/theme/gradient_color.dart';

class LiveMatchesCardWidget extends StatefulWidget {
  const LiveMatchesCardWidget({super.key});

  @override
  State<LiveMatchesCardWidget> createState() => _LiveMatchesCardWidgetState();
}

class _LiveMatchesCardWidgetState extends State<LiveMatchesCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          width: 160,
          decoration: BoxDecoration(
            gradient: getCardGradientColor(context),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildLiveButton(),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "assets/chelsea.png",
                    height: 50,
                  ),
                  Text(
                    "VS",
                    style: TextStyle(color: ColorCode.colorWhite),
                  ),
                  Image.asset(
                    "assets/man_utd.png",
                    height: 50,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              buildMatchInfoRow("Leberia", 0),
              const SizedBox(height: 8),
              buildMatchInfoRow("Queretaro", 1),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "33:06'",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(fontSize: 20),
                  ),
                ),
              ),
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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          color: ColorCode.colorBlack.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.album_rounded,
              color: ColorCode.colorRed,
              size: 15,
            ),
            Text(
              "Live",
              style: TextStyle(color: ColorCode.colorWhite),
            ),
          ],
        ),
      ),
    );
  }

  Row buildMatchInfoRow(String name, int winMatchCount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        Text(
          "$winMatchCount",
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ],
    );
  }
}
