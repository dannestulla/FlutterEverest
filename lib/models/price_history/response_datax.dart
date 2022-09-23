
import 'package:json_annotation/json_annotation.dart';

part 'response_datax.g.dart';
@JsonSerializable()
class DataX {
  final List<List<num>> values;

  DataX({required this.values});

  factory DataX.fromJson(Map<String, dynamic> json) =>
      _$DataXFromJson(json);

  Map<String, dynamic> toJson() => _$DataXToJson(this);
}