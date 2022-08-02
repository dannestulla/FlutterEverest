import 'package:flutter/material.dart';
import 'package:listagem_cripto/screen_components/percentage_indicator.dart';

import '../utils/styles.dart';

class DetailsRow extends StatelessWidget {
  const DetailsRow(
      {Key? key, this.title = "", this.value = "", this.subTitle = ""})
      : super(key: key);
  final String title;
  final String value;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          children: [
            Row(children: [
              Text(title, style: CustomTextStyle.rowText),
              const Spacer(),
              Text(value, style: CustomTextStyle.rowText)
            ]),
            Row(
              children: [Text(subTitle, style: CustomTextStyle.subTitle)],
            )
          ],
        ));
  }
}

class DetailsRowPercent extends StatelessWidget {
  const DetailsRowPercent(
      {Key? key, required this.percentage, required this.title})
      : super(key: key);
  final String percentage;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(children: [
        Text(title, style: CustomTextStyle.rowText),
        const Spacer(),
        PercentageIndicator(percentage: percentage)
      ]),
    );
  }
}
