
import 'package:json_annotation/json_annotation.dart';

import 'response_data.dart';

part 'response.g.dart';

@JsonSerializable()
class CriptoResponse {
  final List<Data> data;

  CriptoResponse({
    required this.data});

  factory CriptoResponse.fromJson(Map<String, dynamic> json) =>
      _$CriptoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CriptoResponseToJson(this);
}
