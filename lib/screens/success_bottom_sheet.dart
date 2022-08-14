import 'package:flutter/material.dart';

import '../screen_components/titles.dart';
import '../utils/strings.dart';

void bottomSheet(BuildContext context) {
  showBottomSheet(
    context: context,
    builder: (context) => Column(children: const [
      Spacer(),
      Icon(
        color: Colors.green,
        size: 70, Icons.check_circle),
      SizedBox(height: 10),
      MainTitle(Strings.conversaoEfetuada),
      SizedBox(height: 10),
      Center(
          child: Text(
        Strings.efetuadaComSucesso,
        style: TextStyle(color: Color.fromARGB(255, 120, 120, 120), fontSize: 15),
      )),
      Spacer()
    ]),
  );
}
