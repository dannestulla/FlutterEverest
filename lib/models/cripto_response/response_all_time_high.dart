import 'package:json_annotation/json_annotation.dart';
part 'response_all_time_high.g.dart';

@JsonSerializable()
class AllTimeHigh {
  final num price;

  AllTimeHigh({required this.price});

  factory AllTimeHigh.fromJson(Map<String, dynamic> json) =>
      _$AllTimeHighFromJson(json);

  Map<String, dynamic> toJson() => _$AllTimeHighToJson(this);
}
