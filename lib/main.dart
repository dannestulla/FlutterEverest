import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:listagem_cripto/screen_components/bottom_navigation.dart';
import 'package:listagem_cripto/screens/convert_screen.dart';
import 'package:listagem_cripto/screens/cripto_screen.dart';
import 'package:listagem_cripto/screens/home_screen.dart';
import 'package:listagem_cripto/screens/transactions_screen.dart';
import 'screens/list_screen.dart';

void main() {
  runApp(ProviderScope(
      child: MaterialApp(
          title: "Routes",
          initialRoute: CustomBottomNavigation.customBottomNavigation,
          routes: {
        CustomBottomNavigation.customBottomNavigation: (context) =>
            const CustomBottomNavigation(),
        HomeScreen.homeScreen: ((context) => const HomeScreen()),
        CriptoListSelection.listSelection: (context) =>
            const CriptoListSelection(),
        TransactionsScreen.transactionsScreen: ((context) =>
            const TransactionsScreen()),
        SelectedCriptoScreen.selectedCriptoScreen: (context) =>
            const SelectedCriptoScreen(),
        ConvertScreen.convertScreen: ((context) => const ConvertScreen()),
      })));
}
