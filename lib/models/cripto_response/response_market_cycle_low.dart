import 'package:json_annotation/json_annotation.dart';

part 'response_market_cycle_low.g.dart';

@JsonSerializable()
class CycleLow {
  final num price;

  CycleLow({required this.price});

  factory CycleLow.fromJson(Map<String, dynamic> json) =>
      _$CycleLowFromJson(json);

  Map<String, dynamic> toJson() => _$CycleLowToJson(this);
}