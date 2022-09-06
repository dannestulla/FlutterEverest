import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:listagem_cripto/models/transactions_model.dart';

import '../screens/list_screen.dart';

final criptoSelected = StateProvider((ref) => getCriptoList()[0]);

final criptoListResponse = FutureProvider<List<Criptos>>((ref) {
  return getCriptoList();
});

final transactionsProvider = StateProvider((ref) => <Transactions>[]);

List<Criptos> getCriptoList() {
  return [
    Criptos("ETH", "Ethereum", "R\$ 0,00", "75%"),
    Criptos("BTC", "Bitcoin", "R\$ 1.000,00", "75%"),
    Criptos("LTC", "Litecoin", "R\$ 0,00", "-7%")
  ];
}
