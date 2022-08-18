import 'package:flutter/material.dart';
import 'package:listagem_cripto/cripto_providers.dart';
import 'package:listagem_cripto/screen_components/percentage_indicator.dart';

class CriptoCard extends StatelessWidget {
  const CriptoCard(this.index, {Key? key}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
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
                    PercentageIndicator(
                        percentage: criptosList[index].percentage)
                  ],
                )
              ],
            )));
  }
}
