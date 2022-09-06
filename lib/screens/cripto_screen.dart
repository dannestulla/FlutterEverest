import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:listagem_cripto/screen_components/button.dart';
import 'package:listagem_cripto/screen_components/titles.dart';
import 'package:listagem_cripto/screens/convert_screen.dart';
import 'package:listagem_cripto/utils/strings.dart';
import '../providers/cripto_providers.dart';
import '../screen_components/app_bar.dart';
import '../screen_components/cripto_chart.dart';
import '../screen_components/details_row.dart';

class SelectedCriptoScreen extends ConsumerWidget {
  const SelectedCriptoScreen({Key? key}) : super(key: key);
  static const selectedCriptoScreen = '/selected_cripto';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currencyName = ref.watch(criptoSelected.notifier);

    return Scaffold(
        appBar: const CustomAppBar(title: Strings.detalhes),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MainTitle(Strings.moeda + "\n" + currencyName.state.currencyName),
                    const SizedBox(height: 20),
                    const CriptoChart(),
                    const SizedBox(height: 20),
                    const SubTitle(Strings.informacoes),
                    const Divider(
                      height: 20,
                      thickness: 1,
                      color: Color.fromARGB(255, 220, 220, 220),
                    ),
                    const DetailsRow(
                        title: Strings.ethereum,
                        value: Strings.vinteMil,
                        subTitle: Strings.valorAtual),
                    const SizedBox(height: 10),
                    const DetailsRowPercent(
                        title: Strings.capDeMercado, percentage: "+0,2%"),
                    const DetailsRow(
                        title: Strings.valorMinimo, value: Strings.doisCents),
                    const DetailsRow(
                        title: Strings.valorMaximo, value: Strings.quatroSete),
                    const Center(child: CustomButton(
                        buttonText: Strings.converterMoeda,
                        backgroundColor: Color.fromARGB(250, 224, 43, 87),
                        textColor: Colors.white,
                        route: ConvertScreen.convertScreen,
                        buttonWidth: 340)),
               
                  ],
                ))));
  }
}