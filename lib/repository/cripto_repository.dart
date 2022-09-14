import 'package:listagem_cripto/repository/cripto_endpoint.dart';
import '../models/cripto_response/response.dart';
import '../models/price_history/price_history_response.dart';

Future<CriptoResponse> getCriptoList() async {
  final result = await CriptoEndpoint("v2/assets").getCriptoList();
  return CriptoResponse.fromJson(result.data);
}

Future<ResponsePriceHistory> getPriceHistory(
    String? startDate, String? endDate, String? currencySlug) async {
  final result = await CriptoEndpoint(
          "v1/assets/$currencySlug/metrics/price/time-series?start=$startDate&end=$endDate&interval=1d&columns=close")
      .getCriptoList();
  return ResponsePriceHistory.fromJson(result.data);
}
