import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:listagem_cripto/models/transactions_model.dart';
import 'package:listagem_cripto/screen_components/button.dart';
import 'package:listagem_cripto/screen_components/dropdown_button.dart';
import 'package:listagem_cripto/screen_components/percentage_filter.dart';
import 'package:listagem_cripto/screen_components/titles.dart';
import 'package:listagem_cripto/screens/cripto_screen.dart';

import '../providers/cripto_providers.dart';
import '../screen_components/edit_text.dart';
import '../utils/strings.dart';

class ConvertScreen extends ConsumerWidget {
  const ConvertScreen({Key? key}) : super(key: key);
  static const convertScreen = '/convert_screen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DropdownSelection dropdownSelection = DropdownSelection("BTC","BTC");
    var firstAmount = CriptoEditText(Strings.montanteSerConvertido);
    var secondAmount = CriptoEditText(Strings.montantePosConversao);
    var transactions = ref.watch(transactionsProvider.notifier);

    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MainTitle(Strings.conversaoDeMoeda),
              const SizedBox(height: 50),
              const SubTitle(Strings.converterDe),
              const SizedBox(height: 20),
              CriptoDropdownButton((cripto) => {
                dropdownSelection.firstSelection = cripto
              }),
              const SizedBox(height: 20),
              firstAmount,
              const SizedBox(height: 20),
              PercentageFilter(percentageCallback: (percentage) {
                percentage;
              }),
              const SizedBox(height: 50),
              const SubTitle(Strings.paraReceberEm),
              const SizedBox(height: 20),
              CriptoDropdownButton((cripto) => {
                dropdownSelection.secondSelection = cripto
              }),
              const SizedBox(height: 20),
              secondAmount,
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomButton(
                    buttonText: Strings.cancelar,
                    backgroundColor: Colors.white,
                    textColor: Color.fromARGB(250, 224, 43, 87),
                    route: SelectedCriptoScreen.selectedCriptoScreen,
                    buttonWidth: 120,
                  ),
                  const SizedBox(width: 30),
                  CustomButton(
                      buttonText: Strings.confirmar,
                      backgroundColor: const Color.fromARGB(250, 224, 43, 87),
                      textColor: Colors.white,
                      buttonWidth: 120,
                      showBottomSheet: true,
                      transaction: () => {
                            transactions.state.add(Transactions(
                                getCurrentDay(),
                                firstAmount.editText.text,
                                secondAmount.editText.text,
                                "USS 0,00",
                                dropdownSelection.firstSelection,
                                dropdownSelection.secondSelection))
                          })
                ],
              )
            ],
          )),
    )));
  }
}

String getCurrentDay() {
  final now = DateTime.now();
  return "${now.day}/${now.month}/${now.year}";
}

class DropdownSelection {
  DropdownSelection(this.firstSelection, this.secondSelection);

  String firstSelection;
  String secondSelection;
}
