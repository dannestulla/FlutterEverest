import 'package:flutter/material.dart';
import 'package:listagem_cripto/utils/extention_functions.dart';

class DaysFilterButtons extends StatefulWidget {
  const DaysFilterButtons({Key? key, required this.daysCallback}) : super(key: key);

  final Function(DaysSelected) daysCallback;

  @override
  State<StatefulWidget> createState() => DaysFilterButtonsState(daysCallback);
}

class DaysFilterButtonsState extends State<DaysFilterButtons> {
  DaysFilterButtonsState(this.daysCallback);

  Function(DaysSelected) daysCallback;

  final List<bool> isSelected = [true, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      constraints: const BoxConstraints(minHeight: 30, minWidth: 40),
      children: <Widget>[
        DaysSelected.fiveDays.toText(),
        DaysSelected.tenDays.toText(),
        DaysSelected.fifteenDays.toText(),
        DaysSelected.thirdyDays.toText(),
        DaysSelected.fiftyDays.toText()
      ],
      renderBorder: false,
      fillColor: const Color.fromARGB(255, 213, 213, 213),
      onPressed: (int index) {
        setState(() {
          for (int buttonIndex = 0;
              buttonIndex < isSelected.length;
              buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = true;
            } else {
              isSelected[buttonIndex] = false;
            }
          }
          daysCallback(DaysSelected.values[index]);
        });
      },
      isSelected: isSelected,
    );
  }
}

enum DaysSelected { fiveDays, tenDays, fifteenDays, thirdyDays, fiftyDays }
