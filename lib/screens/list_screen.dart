import 'package:flutter/material.dart';
import 'package:listagem_cripto/screen_components/percentage_indicator.dart';
import 'package:listagem_cripto/screens/cripto_screen.dart';

import '../screen_components/bottom_navigation.dart';

class CriptoListSelection extends StatelessWidget {
  CriptoListSelection({Key? key}) : super(key: key);

  final List<Criptos> criptosList = [
    Criptos("ETH", "Ethereum", "R\$ 0,00", "75%"),
    Criptos("BTC", "Bitcoin", "R\$ 1.000,00", "75%"),
    Criptos("LTC", "Litecoin", "R\$ 0,00", "-7%")
  ];

  @override
  Widget build(BuildContext context) {
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
                          Navigator.pushNamed(context, "/selected_cripto",
                              arguments:
                                  SelectedCriptoArguments(criptosList[index]));
                        },
                        child: Card(
                            elevation: 0,
                            child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    const Icon(Icons.circle, size: 60),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              criptosList[index]
                                                  .currencyInitials,
                                              style: const TextStyle(
                                                  fontSize: 20)),
                                          const SizedBox(height: 6),
                                          Text(criptosList[index].currencyName,
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey))
                                        ]),
                                    const Spacer(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(criptosList[index].price,
                                            style:
                                                const TextStyle(fontSize: 20)),
                                        const SizedBox(height: 6),
                                        PercentageIndicator(
                                            percentage: criptosList[index].percentage)
                                      ],
                                    )
                                  ],
                                ))));
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
