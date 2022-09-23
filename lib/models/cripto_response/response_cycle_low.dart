import 'package:json_annotation/json_annotation.dart';
part 'response_cycle_low.g.dart';
@JsonSerializable()
class CicleLow {
  final num price;

  CicleLow({required this.price});

  factory CicleLow.fromJson(Map<String, dynamic> json) =>
      _$CicleLowFromJson(json);

  Map<String, dynamic> toJson() => _$CicleLowToJson(this);

}
