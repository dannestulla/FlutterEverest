import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:listagem_cripto/screen_components/percentage_indicator.dart';

import '../models/transactions_model.dart';
import '../screens/list_screen.dart';

class CriptoCard extends ConsumerWidget {
  const CriptoCard(this.criptos, {Key? key}) : super(key: key);
  final Criptos criptos;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
        elevation: 0,
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(criptos.currencyInitials,
                      style: const TextStyle(fontSize: 20)),
                  const SizedBox(height: 6),
                  Text(criptos.currencyName,
                      style: const TextStyle(fontSize: 16, color: Colors.grey))
                ]),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(criptos.price, style: const TextStyle(fontSize: 20)),
                    const SizedBox(height: 6),
                    PercentageIndicator(percentage: criptos.percentage)
                  ],
                )
              ],
            )));
  }
}

class TransactionsCard extends ConsumerWidget {
  const TransactionsCard(this.transactions, {Key? key}) : super(key: key);
  final Transactions transactions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
        elevation: 0,
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                const Icon(Icons.code),
                const SizedBox(width: 10),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(
                      "${transactions.amount.toString()} ${transactions.firstCurrency}",
                      style: const TextStyle(fontSize: 18)),
                  const SizedBox(height: 10),
                  Text(transactions.date.toString())
                ]),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                        "${transactions.quantity.toString()} ${transactions.secondCurrency}",
                        style: const TextStyle(fontSize: 18)),
                    const SizedBox(height: 10),
                    Text(transactions.price.toString())
                  ],
                )
              ],
            )));
  }
}
