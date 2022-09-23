import 'package:flutter/material.dart';

class PercentageFilter extends StatefulWidget {
  const PercentageFilter({Key? key, required this.percentageCallback})
      : super(key: key);

  final Function(PercentageSelected) percentageCallback;

  @override
  State<StatefulWidget> createState() =>
      PercentageFilterState(percentageCallback);
}

class PercentageFilterState extends State<PercentageFilter> {
  PercentageFilterState(this.daysCallback);

  Function(PercentageSelected) daysCallback;
  final List<PercentageOptions> percentageOptionsSelected = options;

  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 10.0,
        runSpacing: 20.0,
        children: percentageOptionsSelected
            .map((option) => Container(
                decoration: customBoxDecoration(option.isActive),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        for (var element in percentageOptionsSelected) {
                          element.isActive = false;
                        }
                        option.isActive = !option.isActive;
                      });
                    },
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(option.percentage,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: option.isActive
                                    ? Colors.white
                                    : Colors.black87))))))
            .toList());
  }
}

BoxDecoration customBoxDecoration(bool isActive) {
  return BoxDecoration(
    color: isActive ? const Color.fromARGB(255, 47, 47, 51) : Colors.white,
    border: Border.all(color: Colors.black12, width: 1.0),
    borderRadius: const BorderRadius.all(
      Radius.circular(18.0),
    ),
  );
}

enum PercentageSelected { twentyFive, fifthy, seventyFive, oneHundred }

class PercentageOptions {
  String percentage;
  bool isActive;

  PercentageOptions(this.percentage, this.isActive);
}

final options = [
  PercentageOptions('25%', false),
  PercentageOptions('50%', false),
  PercentageOptions('75%', false),
  PercentageOptions('100%', true),
];
