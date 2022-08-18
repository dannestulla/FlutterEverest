import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:listagem_cripto/screens/convert_screen.dart';
import 'package:listagem_cripto/screens/cripto_screen.dart';

import 'screens/list_screen.dart';

void main() {
  runApp(ProviderScope(child: MaterialApp(title: "Routes", initialRoute: '/', routes: {
    '/': (context) => const CriptoListSelection(),
    SelectedCriptoScreen.selectedCriptoScreen: (context) => const SelectedCriptoScreen(),
    ConvertScreen.convertScreen: ((context) => const ConvertScreen())
  })));
}
