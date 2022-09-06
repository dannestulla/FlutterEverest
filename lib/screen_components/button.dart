import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:listagem_cripto/models/transactions_model.dart';
import 'package:listagem_cripto/providers/cripto_providers.dart';

import '../screens/success_bottom_sheet.dart';

class CustomButton extends ConsumerWidget {
  const CustomButton(
      {Key? key,
      required this.buttonText,
      required this.backgroundColor,
      required this.textColor,
      this.route,
      required this.buttonWidth,
      this.showBottomSheet,
      this.transaction})
      : super(key: key);
  final String buttonText;
  final Color textColor;
  final Color backgroundColor;
  final String? route;
  final double? buttonWidth;
  final bool? showBottomSheet;
  final Function? transaction;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        if (showBottomSheet != null && transaction != null) {
          bottomSheet(context);
          transaction?.call();
        }
      },
    );
  }
}
