// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_market_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketData _$MarketDataFromJson(Map<String, dynamic> json) => MarketData(
      price_usd: json['price_usd'] as num,
      percent_change_usd_last_24_hours:
          json['percent_change_usd_last_24_hours'] as num,
    );

Map<String, dynamic> _$MarketDataToJson(MarketData instance) =>
    <String, dynamic>{
      'price_usd': instance.price_usd,
      'percent_change_usd_last_24_hours':
          instance.percent_change_usd_last_24_hours,
    };
