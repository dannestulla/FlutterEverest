import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:listagem_cripto/screen_components/days_filter.dart';

extension Converter on DaysSelected {
  toText() {
    switch (this) {
      case DaysSelected.fiveDays:
        return formatButtomText("5D");
      case DaysSelected.tenDays:
        return formatButtomText("10D");
      case DaysSelected.fifteenDays:
        return formatButtomText("15D");
      case DaysSelected.thirdyDays:
        return formatButtomText("30D");
      case DaysSelected.fiftyDays:
        return formatButtomText("50D");
    }
  }

  convertToInteger() {
    switch (this) {
      case DaysSelected.fiveDays:
        return 5;
      case DaysSelected.tenDays:
        return 10;
      case DaysSelected.fifteenDays:
        return 15;
      case DaysSelected.thirdyDays:
        return 30;
      case DaysSelected.fiftyDays:
        return 50;
    }
  }
}

Text formatButtomText(String daySelected) {
  return Text(daySelected,
      style: const TextStyle(
          color: Color.fromARGB(255, 103, 103, 103),
          fontWeight: FontWeight.bold),);
}
