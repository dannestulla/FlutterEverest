import 'package:flutter/material.dart';

import '../utils/styles.dart';

Widget detailsRow({String? title, String? value, String? subTitle}) {
  return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Row(children: [
            Text(title ?? "", style: CustomTextStyle.rowText),
            const Spacer(),
            Text(value ?? "", style: CustomTextStyle.rowText)
          ]),
          Row(
            children: [Text(subTitle ?? "", style: CustomTextStyle.subTitle)],
          )
        ],
      ));
}
