import 'package:flutter/material.dart';
import 'package:listagem_cripto/screen_components/button.dart';
import 'package:listagem_cripto/screen_components/dropdown_button.dart';
import 'package:listagem_cripto/screen_components/percentage_filter.dart';
import 'package:listagem_cripto/screen_components/titles.dart';
import 'package:listagem_cripto/screens/cripto_screen.dart';

import '../screen_components/edit_text.dart';
import '../utils/strings.dart';

class ConvertScreen extends StatelessWidget {
  const ConvertScreen({Key? key}) : super(key: key);
  static const convertScreen = '/convert_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child:
          SingleChildScrollView(child: 
      Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MainTitle(Strings.conversaoDeMoeda),
              const SizedBox(height: 50),
              const SubTitle(Strings.converterDe),
              const SizedBox(height: 20),
              const CriptoDropdownButton(),
              const SizedBox(height: 20),
              CriptoEditText(Strings.montanteSerConvertido),
              const SizedBox(height: 20),
              PercentageFilter(percentageCallback: (percentage) {
                percentage;
              }),
              const SizedBox(height: 50),
              const SubTitle(Strings.paraReceberEm),
                     const SizedBox(height: 20),
              const CriptoDropdownButton(),
                     const SizedBox(height: 20),
              CriptoEditText(Strings.montantePosConversao),       
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomButton(
                    buttonText: Strings.cancelar,
                    backgroundColor: Colors.white,
                    textColor: Color.fromARGB(250, 224, 43, 87),
                    route: SelectedCriptoScreen.selectedCriptoScreen,
                    buttonWidth: 120,
                  ),
                  SizedBox(width: 30),
                  CustomButton(
                    buttonText: Strings.confirmar,
                    backgroundColor: Color.fromARGB(250, 224, 43, 87),
                    textColor: Colors.white,
                    route: SelectedCriptoScreen.selectedCriptoScreen,
                    buttonWidth: 120,
                  )
                ],
              )
            ],
          )),
    )));
  }
}
