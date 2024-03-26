import 'package:flutter/material.dart';

class DropDownButtonWidget extends StatefulWidget {
  const DropDownButtonWidget({super.key});

  @override
  State<DropDownButtonWidget> createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  List<String> dropDownOption = ["All Sports", "Cricket", "Football"];
  String selectedOption = "All Sports";
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        value: selectedOption,
        icon: const Icon(Icons.keyboard_arrow_down),
        style: Theme.of(context).dropdownMenuTheme.textStyle,
        dropdownColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        items: dropDownOption
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e,
                ),
              ),
            )
            .toList(),
        onChanged: (value) {
          setState(() {
            selectedOption = value!;
          });
        });
  }
}
