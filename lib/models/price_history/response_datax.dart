
import 'package:json_annotation/json_annotation.dart';
import 'package:listagem_cripto/models/price_history/price_history_valuesx.dart';

part 'response_datax.g.dart';
@JsonSerializable()
class DataX {
  final ValuesX? values;

  DataX({this.values});

  factory DataX.fromJson(Map<String, dynamic> json) =>
      _$DataXFromJson(json);

  Map<String, dynamic> toJson() => _$DataXToJson(this);
}