import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:listagem_cripto/screen_components/card.dart';
import 'package:listagem_cripto/screens/cripto_screen.dart';

import '../cripto_providers.dart';
import '../screen_components/bottom_navigation.dart';

class CriptoListSelection extends ConsumerWidget {
  const CriptoListSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Text("Carteira",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))),
          const Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Text("USS 1.000,00",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))),
          Expanded(
              child: ListView.builder(
                  itemCount: criptosList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          ref.watch(criptoSelectedProvider.notifier).state =
                              criptosList[index];
                          Navigator.pushNamed(context,
                              SelectedCriptoScreen.selectedCriptoScreen);
                        },
                        child: CriptoCard(index));
                  }))
        ])),
        bottomNavigationBar: const CustomBottomNavigation());
  }
}

class Criptos {
  String currencyInitials;
  String currencyName;
  String price;
  String percentage;

  Criptos(
      this.currencyInitials, this.currencyName, this.price, this.percentage);
}
