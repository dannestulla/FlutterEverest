import 'package:flutter/material.dart';
import 'package:listagem_cripto/screen_components/days_filter.dart';
import 'package:listagem_cripto/screen_components/percentage_filter.dart';

extension Converter on DaysSelected {
  toText() {
    switch (this) {
      case DaysSelected.fiveDays:
        return formatButtomText("5D", const Color.fromARGB(255, 103, 103, 103));
      case DaysSelected.tenDays:
        return formatButtomText("10D", const Color.fromARGB(255, 103, 103, 103));
      case DaysSelected.fifteenDays:
        return formatButtomText("15D", const Color.fromARGB(255, 103, 103, 103));
      case DaysSelected.thirdyDays:
        return formatButtomText("30D", const Color.fromARGB(255, 103, 103, 103));
      case DaysSelected.fiftyDays:
        return formatButtomText("50D", const Color.fromARGB(255, 103, 103, 103));
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

extension PercentageConverter on PercentageSelected {
  toText() {
    switch (this) {
      case PercentageSelected.twentyFive:
        return formatButtomText("25%", const Color.fromARGB(255, 116, 116, 119));
      case PercentageSelected.fifthy:
        return formatButtomText("50%", const Color.fromARGB(255, 116, 116, 119));
      case PercentageSelected.seventyFive:
        return formatButtomText("75%", const Color.fromARGB(255, 116, 116, 119));
      case PercentageSelected.oneHundred:
        return formatButtomText("100%", const Color.fromARGB(255, 116, 116, 119));
    }
  }
}

Text formatButtomText(String daySelected, Color color) {
  return Text(
    daySelected,
    style: TextStyle(
      color: color, fontWeight: FontWeight.bold),
  );
}
