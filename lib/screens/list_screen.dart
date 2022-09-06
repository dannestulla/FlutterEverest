import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:listagem_cripto/screen_components/cards.dart';
import 'package:listagem_cripto/screens/cripto_screen.dart';
import 'package:listagem_cripto/utils/styles.dart';
import '../providers/cripto_providers.dart';
import '../utils/strings.dart';

class CriptoListSelection extends ConsumerWidget {
  const CriptoListSelection({Key? key}) : super(key: key);
  static const listSelection = "";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final criptoResponse = ref.watch(criptoListResponse);
    return SafeArea(child: Scaffold(
        body: criptoResponse.when(
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => const CircularProgressIndicator(),
            data: (responseData) =>
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: Text(Strings.carteiras,
                          style: CustomTextStyle.titleBold)),
                  const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: Text("USS 1.000,00",
                          style: CustomTextStyle.titleBold)),
                  Expanded(
                      child: ListView.builder(
                          itemCount: responseData.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                                onTap: () {
                                  ref.watch(criptoSelected.notifier).state =
                                      responseData[index];
                                  Navigator.pushNamed(
                                      context,
                                      SelectedCriptoScreen
                                          .selectedCriptoScreen);
                                },
                                child: CriptoCard(responseData[index]));
                          }))
                ])),
        ));
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
