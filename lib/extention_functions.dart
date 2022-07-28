import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:listagem_cripto/screen_components/days_filter.dart';

extension Converter on DaysSelected {
  toText() {
    switch (this) {
      case DaysSelected.fiveDays:
        return const Text("5D", style: TextStyle(color: Color.fromARGB(255, 103, 103, 103), fontWeight: FontWeight.bold));
      case DaysSelected.tenDays:
        return const Text("10D", style: TextStyle(color: Color.fromARGB(255, 103, 103, 103), fontWeight: FontWeight.bold));
      case DaysSelected.fifteenDays:
        return const Text("15D", style: TextStyle(color: Color.fromARGB(255, 103, 103, 103), fontWeight: FontWeight.bold));
      case DaysSelected.thirdyDays:
        return const Text("30D", style: TextStyle(color: Color.fromARGB(255, 103, 103, 103), fontWeight: FontWeight.bold));
      case DaysSelected.fiftyDays:
        return const Text("50D", style: TextStyle(color: Color.fromARGB(255, 103, 103, 103), fontWeight: FontWeight.bold));
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