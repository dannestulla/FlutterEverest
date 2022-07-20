import 'package:flutter/material.dart';
import 'package:listagem_cripto/selected_cripto_screen.dart';

import 'cripto_list_selection.dart';

void main() {
  runApp(MaterialApp(title: "Routes", initialRoute: '/', routes: {
    '/': (context) => CriptoListSelection(),
    SelectedCriptoScreen.selectedCriptoScreen: (context) =>
        const SelectedCriptoScreen()
  }));
}