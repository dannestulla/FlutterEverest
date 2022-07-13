import 'package:flutter/material.dart';
import 'package:listagem_cripto/bitcoin_screen.dart';
import 'package:listagem_cripto/ethereum_screen.dart';
import 'litecoin_screen.dart';

void main() {
  runApp(MaterialApp(title: "Routes", initialRoute: '/', routes: {
    '/': (context) => MyApp(),
    '/ETH': (context) => const EthereumScreen(),
    '/BTC': (context) => const BitcoinScreen(),
    '/LTC': (context) => const LitecoinScreen()
  }));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  var criptosList = [
    Criptos("ETH", "Ethereum", "R\$ 0,00", 0.75),
    Criptos("BTC", "Bitcoin", "R\$ 1.000,00", 0.75),
    Criptos("LTC", "Litecoin", "R\$ 0,00", -0.07)
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
              itemCount: 3,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/" + criptosList[index].currencyInitials);
                    },
                    child: Card(
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
                                          //set border radius more than 50% of height and width to make circle
                                        ),
                                        color: Colors.deepOrange,
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
  double percentage;

  Criptos(this.currencyInitials, this.currencyName, this.price, this.percentage);
}
