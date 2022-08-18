import 'package:flutter/material.dart';

class CriptoEditText extends StatelessWidget {
  CriptoEditText(this.montanteSerConvertido, {Key? key})
      : super(key: key);
  String montanteSerConvertido;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: montanteSerConvertido,
      ),
    );
  }
}
