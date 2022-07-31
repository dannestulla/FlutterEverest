import 'package:flutter/material.dart';
import 'package:listagem_cripto/screen_components/percentage_indicator.dart';

import '../utils/styles.dart';

Widget detailsRow({String title = "", String value = "", String subTitle = ""}) {
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

Widget detailsRowPercent({String? percentage, String? title}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Row(children: [
      Text(title ?? "", style: CustomTextStyle.rowText),
      const Spacer(),
      percentageIndicator(percentage)
    ]),
  );
}
