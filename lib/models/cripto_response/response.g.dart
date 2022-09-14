// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CriptoResponse _$CriptoResponseFromJson(Map<String, dynamic> json) =>
    CriptoResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CriptoResponseToJson(CriptoResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
