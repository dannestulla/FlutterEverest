import 'package:flutter/material.dart';
import 'cripto_list_selection.dart';

class SelectedCriptoScreen extends StatelessWidget {
  const SelectedCriptoScreen({Key? key}) : super(key: key);
  static const selectedCriptoScreen = '/selected_cripto';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as SelectedCriptoArguments;

    return Scaffold(
      appBar: AppBar(title: Text(args.criptos.currencyName)),
      body: Center(child: Text(args.criptos.currencyName)),
    );
  }
}

class SelectedCriptoArguments {
  final Criptos criptos;

  SelectedCriptoArguments(this.criptos);
}
