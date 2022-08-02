import 'package:flutter/material.dart';

class PercentageIndicator extends StatelessWidget {
  const PercentageIndicator({Key? key, this.percentage})
      : super(key: key);
  final String? percentage;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        color: percentage.toString().contains('-')
            ? const Color.fromARGB(255, 255, 118, 118)
            : const Color.fromARGB(255, 101, 234, 105),
        child: SizedBox(
            height: 18,
            width: 50,
            child: Text(percentage.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 15, color: Colors.black))));
  }
}
