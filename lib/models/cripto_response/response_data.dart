import 'package:json_annotation/json_annotation.dart';
import 'package:listagem_cripto/models/cripto_response/response_metrics.dart';
part 'response_data.g.dart';

@JsonSerializable()
class Data {
  final String? symbol;
  final String? name;
  final MetricsX? metrics;
  final String? slug;

  Data({this.name, this.symbol, this.metrics, this.slug});

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}