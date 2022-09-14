import 'package:json_annotation/json_annotation.dart';
import 'package:listagem_cripto/models/price_history/response_datax.dart';

part 'price_history_response.g.dart';

@JsonSerializable()
class ResponsePriceHistory {
  final DataX data;

  ResponsePriceHistory({required this.data});

  factory ResponsePriceHistory.fromJson(Map<String, dynamic> json) =>
      _$ResponsePriceHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$ResponsePriceHistoryToJson(this);
}
