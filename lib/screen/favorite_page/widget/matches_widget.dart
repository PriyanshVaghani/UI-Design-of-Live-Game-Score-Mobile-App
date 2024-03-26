import 'package:flutter/material.dart';
import 'package:ui_demo/utility/color_code.dart';
import 'package:ui_demo/widgets/dorpdown_button_widget.dart';
import 'package:ui_demo/widgets/other_matches_card_widget.dart';

class MatchesWidget extends StatefulWidget {
  const MatchesWidget({super.key});

  @override
  State<MatchesWidget> createState() => _MatchesWidgetState();
}

class _MatchesWidgetState extends State<MatchesWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
          child: SearchBar(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: ColorCode.colorBlack, width: 1),
              ),
            ),
            backgroundColor:
                MaterialStateProperty.all(ColorCode.colorTransparent),
            elevation: MaterialStateProperty.all(0),
            leading: const Icon(Icons.search),
            trailing: const [
              DropDownButtonWidget(),
            ],
            textStyle: MaterialStateProperty.all(
              Theme.of(context).dropdownMenuTheme.textStyle,
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const OtherMatchesCardWidget();
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 10,
              );
            },
          ),
        ),
      ],
    );
  }
}
