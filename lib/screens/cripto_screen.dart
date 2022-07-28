import 'package:flutter/material.dart';
import '../screen_components/cripto_chart.dart';
import 'list_screen.dart';

class SelectedCriptoScreen extends StatelessWidget {
  const SelectedCriptoScreen({Key? key}) : super(key: key);
  static const selectedCriptoScreen = '/selected_cripto';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as SelectedCriptoArguments;

    return Scaffold(
        appBar: AppBar(title: Text(args.criptos.currencyName)),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(20),
                child: Text("Moeda ${args.criptos.currencyName}",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        fontSize: 35, fontWeight: FontWeight.bold))),
            const Padding(
                padding: EdgeInsets.all(20),
                child: SizedBox(child: CriptoChart(), width: 700, height: 500))
          ],
        ));
  }
}

class SelectedCriptoArguments {
  final Criptos criptos;

  SelectedCriptoArguments(this.criptos);
}
