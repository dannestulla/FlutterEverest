import 'package:flutter/material.dart';

class CriptoDropdownButton extends StatefulWidget {
  CriptoDropdownButton(this.selectedCripto, {Key? key}) : super(key: key);
  Function(String value)? selectedCripto;

  @override
  State<CriptoDropdownButton> createState() => _CriptoDropdownButton();
}

class _CriptoDropdownButton extends State<CriptoDropdownButton> {
  final currencyList = ['BTC', 'ETH', 'LTC'];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: const InputDecoration(border: OutlineInputBorder()),
      value: currencyList[0],
      onChanged: (String? newValue) {
        setState(() {
          currencyList.firstWhere((currency) => currency == newValue);
          widget.selectedCripto?.call(newValue!);
        });
      },
      items: currencyList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
