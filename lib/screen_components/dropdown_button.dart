import 'package:flutter/material.dart';

class CriptoDropdownButton extends StatefulWidget {
  const CriptoDropdownButton({Key? key}) : super(key: key);

  @override
  State<CriptoDropdownButton> createState() => _CriptoDropdownButton();
}

class _CriptoDropdownButton extends State<CriptoDropdownButton> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return  DropdownButtonFormField<String>(
      decoration: const InputDecoration(
        border: OutlineInputBorder()
      ),
          value: dropdownValue,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>['One', 'Two', 'Free', 'Four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        );
  }
}
