import 'package:json_annotation/json_annotation.dart';

part 'price_history_valuesx.g.dart';

@JsonSerializable()
class ValuesX {
  final List<num> values;

  ValuesX({required this.values});

  factory ValuesX.fromJson(Map<String, dynamic> json) =>
      _$ValuesXFromJson(json);

  Map<String, dynamic> toJson() => _$ValuesXToJson(this);
}