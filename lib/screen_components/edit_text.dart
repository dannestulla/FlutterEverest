import 'package:flutter/material.dart';

class CriptoEditText extends StatelessWidget {
  CriptoEditText(this.montanteSerConvertido, {Key? key})
      : super(key: key);
  String montanteSerConvertido;
  TextEditingController editText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: editText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: montanteSerConvertido,
      ),
    );
  }
}
