import 'package:listagem_cripto/models/price_history/price_history_parameters.dart';
import 'package:listagem_cripto/repository/cripto_endpoint.dart';
import '../models/cripto_response/response.dart';
import '../models/price_history/price_history_response.dart';

Future<CriptoResponse> getCriptoList() async {
  final result = await CriptoEndpoint().getCriptoList();
  return CriptoResponse.fromJson(result.data);
}

Future<ResponsePriceHistory> getPriceHistory(
    PriceHistoryParameters params) async {
  final result = await CriptoEndpoint().getPriceHistory(params);
  return ResponsePriceHistory.fromJson(result.data);
}
