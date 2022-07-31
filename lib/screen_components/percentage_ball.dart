import 'package:flutter/material.dart';
import 'package:listagem_cripto/screens/list_screen.dart';

Widget percentageIndicator(String percentage) {
  return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      color: percentage.toString().contains('-')
          ? Colors.deepOrange
          : Colors.green,
      child: SizedBox(
          height: 18,
          width: 50,
          child: Text(percentage.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: Colors.black))));
}
