// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_datax.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataX _$DataXFromJson(Map<String, dynamic> json) => DataX(
      values: (json['values'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as num).toList())
          .toList(),
    );

Map<String, dynamic> _$DataXToJson(DataX instance) => <String, dynamic>{
      'values': instance.values,
    };
