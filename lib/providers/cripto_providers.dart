import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:listagem_cripto/models/transactions_model.dart';
import 'package:listagem_cripto/repository/cripto_repository.dart';

import '../models/cripto_response/response.dart';
import '../models/cripto_response/response_data.dart';
import '../models/price_history/price_history_parameters.dart';
import '../models/price_history/price_history_response.dart';

final criptoSelected = StateProvider((ref) => Data());

final criptoListResponse = FutureProvider<CriptoResponse>((ref) {
  return getCriptoList();
});

final criptoPriceHistory =
    FutureProvider.family<ResponsePriceHistory, PriceHistoryParameters>(
        (ref, parameters) {
  return getPriceHistory(
      parameters.startDate, parameters.endDate, parameters.currencySlug);
});

final transactionsProvider = StateProvider((ref) => <Transactions>[]);


