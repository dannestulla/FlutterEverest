// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetricsX _$MetricsXFromJson(Map<String, dynamic> json) => MetricsX(
      market_data:
          MarketData.fromJson(json['market_data'] as Map<String, dynamic>),
      cycle_low: CycleLow.fromJson(json['cycle_low'] as Map<String, dynamic>),
      allTimeHigh:
          AllTimeHigh.fromJson(json['all_time_high'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MetricsXToJson(MetricsX instance) => <String, dynamic>{
      'market_data': instance.market_data,
      'cycle_low': instance.cycle_low,
      'all_time_high': instance.allTimeHigh,
    };
