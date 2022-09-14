import 'package:json_annotation/json_annotation.dart';
import 'package:listagem_cripto/models/cripto_response/response_all_time_high.dart';
import 'package:listagem_cripto/models/cripto_response/response_market_cycle_low.dart';
import 'package:listagem_cripto/models/cripto_response/response_market_data.dart';

part 'response_metrics.g.dart';

@JsonSerializable()
class MetricsX {
  final MarketData market_data;
  final CycleLow cycle_low;
  final AllTimeHigh allTimeHigh;

  MetricsX({required this.market_data, required this.cycle_low, required this.allTimeHigh});

  factory MetricsX.fromJson(Map<String, dynamic> json) =>
      _$MetricsXFromJson(json);

  Map<String, dynamic> toJson() => _$MetricsXToJson(this);
}