import 'package:flutter/material.dart';
import 'package:listagem_cripto/utils/extention_functions.dart';

class DaysFilterButtons extends StatefulWidget {
  DaysFilterButtons({Key? key, required this.daysCallback}) : super(key: key);

  Function(DaysSelected) daysCallback;

  @override
  State<StatefulWidget> createState() => DaysFilterButtonsState(daysCallback);
}

class DaysFilterButtonsState extends State<DaysFilterButtons> {
  DaysFilterButtonsState(this.daysCallback);

  Function(DaysSelected) daysCallback;

  final List<bool> isSelected = [true, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ToggleButtons(
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
    ));
  }
}

enum DaysSelected { fiveDays, tenDays, fifteenDays, thirdyDays, fiftyDays }
