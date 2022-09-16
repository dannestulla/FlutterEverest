import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:listagem_cripto/utils/strings.dart';
import '../models/price_history/price_history_parameters.dart';
import '../models/price_history/price_history_response.dart';
import '../providers/cripto_providers.dart';
import '../screen_components/app_bar.dart';
import '../screen_components/button.dart';
import '../screen_components/details_row.dart';
import '../screen_components/titles.dart';
import '../utils/number_formatt.dart';
import 'convert_screen.dart';

class SelectedCriptoScreen extends ConsumerWidget {
  const SelectedCriptoScreen({Key? key}) : super(key: key);
  static const selectedCriptoScreen = '/selected_cripto';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currencySelected = ref.watch(criptoSelected.notifier).state;
    final priceHistoryParameters = PriceHistoryParameters("2022-05-01", "2022-05-07", "bitcoin");
    final AsyncValue<ResponsePriceHistory> currencyPriceHistory = ref.watch(criptoPriceHistory(priceHistoryParameters));

    return SafeArea(child: Scaffold(
        appBar: const CustomAppBar(title: Strings.detalhes),
        body: currencyPriceHistory.when(
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => const Center(child: CircularProgressIndicator()),
            data: (priceHistory) => SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MainTitle(
                            "${Strings.moeda}\n${currencySelected.name!}"),
                        const SizedBox(height: 20),
                        //CriptoChart(priceHistory.data.values),
                        const SizedBox(height: 20),
                        const SubTitle(Strings.informacoes),
                        const Divider(
                          height: 20,
                          thickness: 1,
                          color: Color.fromARGB(255, 220, 220, 220),
                        ),
                        DetailsRow(
                            title: currencySelected.name!,
                            value: formatToCurrency(currencySelected
                                .metrics?.market_data.price_usd),
                            subTitle: Strings.valorAtual),
                        const SizedBox(height: 10),
                        const DetailsRowPercent(
                            title: Strings.capDeMercado, percentage: "+0,2%"),
                        DetailsRow(
                            title: Strings.valorMinimo,
                            value: formatToCurrency(
                                currencySelected.metrics!.cycle_low.price)),
                        DetailsRow(
                            title: Strings.valorMaximo,
                            value: formatToCurrency(
                                currencySelected.metrics!.allTimeHigh.price)),
                        const Center(
                            child: CustomButton(
                                buttonText: Strings.converterMoeda,
                                backgroundColor:
                                    Color.fromARGB(250, 224, 43, 87),
                                textColor: Colors.white,
                                route: ConvertScreen.convertScreen,
                                buttonWidth: 340)),
                      ],
                    ))))));
  }
}
