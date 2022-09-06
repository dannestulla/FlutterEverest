import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:listagem_cripto/screen_components/card.dart';
import 'package:listagem_cripto/screen_components/titles.dart';
import 'package:listagem_cripto/utils/strings.dart';

import '../providers/cripto_providers.dart';

class TransactionsScreen extends ConsumerWidget {
  const TransactionsScreen({Key? key}) : super(key: key);
  static const transactionsScreen = '/transactions_screen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionsResponse = ref.watch(transactionsProvider);

    return SafeArea(child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const SubTitle(Strings.movimentacoes),
                const SizedBox(height: 20),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: transactionsResponse.length,
                    itemBuilder: (context, index) {
                      return TransactionsCard(transactionsResponse[index]);
                    }),
              ],
            ),
          ),
        )));
  }
}
