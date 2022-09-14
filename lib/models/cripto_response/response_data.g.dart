// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
      metrics: json['metrics'] == null
          ? null
          : MetricsX.fromJson(json['metrics'] as Map<String, dynamic>),
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'metrics': instance.metrics,
      'slug': instance.slug,
    };
