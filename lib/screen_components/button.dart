import 'package:flutter/material.dart';
import 'package:listagem_cripto/screen_components/titles.dart';
import 'package:listagem_cripto/utils/strings.dart';

import '../screens/success_bottom_sheet.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.buttonText,
      required this.backgroundColor,
      required this.textColor,
      this.route,
      required this.buttonWidth,
      this.showBottomSheet})
      : super(key: key);
  final String buttonText;
  final Color textColor;
  final Color backgroundColor;
  final String? route;
  final double? buttonWidth;
  final bool? showBottomSheet;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        buttonText,
        style: TextStyle(color: textColor, fontSize: 16),
      ),
      style: ButtonStyle(
          fixedSize:
              MaterialStateProperty.all(Size.fromWidth(buttonWidth ?? 100)),
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor)),
      onPressed: () {
        if (route != null) {
          Navigator.pushNamed(context, route ?? "");
        }
        if (showBottomSheet != null) {
          bottomSheet(context);
        }
      },
    );
  }
}
