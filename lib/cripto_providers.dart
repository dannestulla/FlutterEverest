import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:listagem_cripto/screens/list_screen.dart';

final criptoSelectedProvider = StateProvider((ref) => criptosList[0]);

final List<Criptos> criptosList = [
  Criptos("ETH", "Ethereum", "R\$ 0,00", "75%"),
  Criptos("BTC", "Bitcoin", "R\$ 1.000,00", "75%"),
  Criptos("LTC", "Litecoin", "R\$ 0,00", "-7%")
];
