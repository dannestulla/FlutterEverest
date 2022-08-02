import 'package:flutter/material.dart';
import 'package:listagem_cripto/utils/strings.dart';
import 'package:listagem_cripto/utils/styles.dart';
import '../screen_components/app_bar.dart';
import '../screen_components/cripto_chart.dart';
import '../screen_components/details_row.dart';
import 'list_screen.dart';

class SelectedCriptoScreen extends StatelessWidget {
  const SelectedCriptoScreen({Key? key}) : super(key: key);
  static const selectedCriptoScreen = '/selected_cripto';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as SelectedCriptoArguments;

    return Scaffold(
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(Strings.moeda + "\n" + args.criptos.currencyName,
                    style: CustomTextStyle.titleBold),
                const SizedBox(height: 20),
                const CriptoChart(),
                const SizedBox(height: 20),
                const Text(Strings.informacoes,
                    style: CustomTextStyle.subTitleBold),
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
              ],
            ))));
  }
}

class SelectedCriptoArguments {
  final Criptos criptos;

  SelectedCriptoArguments(this.criptos);
}
