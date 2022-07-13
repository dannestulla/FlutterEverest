import 'package:flutter/material.dart';
import 'package:listagem_cripto/selected_cripto_screen.dart';

void main() {
  runApp(MaterialApp(title: "Routes", initialRoute: '/', routes: {
    '/': (context) => MyApp(),
    '/selected_cripto': (context) => const SelectedCriptoScreen()
  }));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Criptos> criptosList = [
    Criptos("ETH", "Ethereum", "R\$ 0,00", "75%"),
    Criptos("BTC", "Bitcoin", "R\$ 1.000,00", "75%"),
    Criptos("LTC", "Litecoin", "R\$ 0,00", "-7%")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Text("Carteira", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))),
      const Padding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Text("USS 1.000,00", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))),
      Expanded(
          child: ListView.builder(
              itemCount: criptosList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/selected_cripto",
                          arguments: SelectedCriptoArguments(criptosList[index]));
                    },
                    child: Card(
                        elevation: 0,
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                const Icon(Icons.circle, size: 60),
                                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                  Text(criptosList[index].currencyInitials,
                                      style: const TextStyle(fontSize: 20)),
                                  const SizedBox(height: 6),
                                  Text(criptosList[index].currencyName,
                                      style: const TextStyle(fontSize: 16, color: Colors.grey))
                                ]),
                                const Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(criptosList[index].price,
                                        style: const TextStyle(fontSize: 20)),
                                    const SizedBox(height: 6),
                                    Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(40),
                                        ),
                                        color:
                                            criptosList[index].percentage.toString().contains('-')
                                                ? Colors.deepOrange
                                                : Colors.green,
                                        child: SizedBox(
                                            height: 18,
                                            width: 50,
                                            child: Text(criptosList[index].percentage.toString(),
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                    fontSize: 16, color: Colors.black))))
                                  ],
                                )
                              ],
                            ))));
              }))
    ])));
  }
}

class Criptos {
  String currencyInitials;
  String currencyName;
  String price;
  String percentage;

  Criptos(this.currencyInitials, this.currencyName, this.price, this.percentage);
}
