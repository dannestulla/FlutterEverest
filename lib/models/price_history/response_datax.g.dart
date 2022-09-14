// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_datax.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataX _$DataXFromJson(Map<String, dynamic> json) => DataX(
      values: json['values'] == null
          ? null
          : ValuesX.fromJson(json['values'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataXToJson(DataX instance) => <String, dynamic>{
      'values': instance.values,
    };
