import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:listagem_cripto/screen_components/cards.dart';
import 'package:listagem_cripto/screens/cripto_screen.dart';
import 'package:listagem_cripto/utils/number_formatt.dart';
import 'package:listagem_cripto/utils/styles.dart';
import '../models/cripto_response/response_data.dart';
import '../providers/cripto_providers.dart';
import '../utils/strings.dart';

class CriptoListSelection extends ConsumerWidget {
  const CriptoListSelection({Key? key}) : super(key: key);
  static const listSelection = "";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(criptoListResponse);
    return SafeArea(child: Scaffold(
        body: result.when(
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => const Center(child: CircularProgressIndicator()),
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
                      child: Text(Strings.vinteMil,
                          style: CustomTextStyle.titleBold)),
                  Expanded(
                      child: ListView.builder(
                          itemCount: responseData.data.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                                onTap: () {
                                  ref.watch(criptoSelected.notifier).state =
                                      responseData.data[index];
                                  Navigator.pushNamed(
                                      context,
                                      SelectedCriptoScreen
                                          .selectedCriptoScreen);
                                },
                                child: CriptoCard(mapToCripto(responseData.data[index])));
                          }))
                ])),
        ));
  }

  Criptos mapToCripto(Data data) {
    var price =  formatToCurrency(data.metrics!.market_data.price_usd);
    var changes = "${data.metrics!.market_data.percent_change_usd_last_24_hours.toStringAsFixed(2)}%";
    return Criptos(data.name!, data.symbol!, price, changes);
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
