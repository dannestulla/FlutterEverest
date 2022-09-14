import 'package:json_annotation/json_annotation.dart';
import 'package:listagem_cripto/models/cripto_response/response_all_time_high.dart';
import 'package:listagem_cripto/models/cripto_response/response_market_cycle_low.dart';
part 'response_market_data.g.dart';

@JsonSerializable()
class MarketData {
  final num price_usd;
  final num percent_change_usd_last_24_hours;

  MarketData({required this.price_usd, required this.percent_change_usd_last_24_hours});

  factory MarketData.fromJson(Map<String, dynamic> json) =>
      _$MarketDataFromJson(json);

  Map<String, dynamic> toJson() => _$MarketDataToJson(this);
}