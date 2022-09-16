import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:listagem_cripto/models/price_history/price_history_response.dart';
import 'package:listagem_cripto/models/transactions_model.dart';
import 'package:listagem_cripto/repository/cripto_repository.dart';

import '../models/cripto_response/response.dart';
import '../models/cripto_response/response_data.dart';
import '../models/price_history/price_history_parameters.dart';

final criptoSelected = StateProvider((ref) => Data());

final criptoListResponse = FutureProvider<CriptoResponse>((ref) {
  return getCriptoList();
});

final criptoPriceHistory =
    FutureProvider.family<ResponsePriceHistory, PriceHistoryParameters>(
        (ref, parameters) async {
  return getPriceHistory(parameters);
});

final transactionsProvider = StateProvider((ref) => <Transactions>[]);
