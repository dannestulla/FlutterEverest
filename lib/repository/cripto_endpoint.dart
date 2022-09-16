import 'package:dio/dio.dart';
import 'package:listagem_cripto/models/price_history/price_history_parameters.dart';


class CriptoEndpoint {

  final dio = Dio(BaseOptions(
      baseUrl: "https://data.messari.io/api/"
  ));

  Future<Response> getCriptoList() {
    return dio.get("v2/assets");
  }

  Future<Response> getPriceHistory(PriceHistoryParameters params) {
    final currencySlug = params.currencySlug;
    final startDate = params.startDate;
    final endDate = params.endDate;
    return dio.get("v1/assets/$currencySlug/metrics/price/time-series?start=$startDate&end=$endDate&interval=1d&columns=close");
  }
}