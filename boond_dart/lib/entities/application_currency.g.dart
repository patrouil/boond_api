// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppDictCurrency _$AppDictCurrencyFromJson(Map<String, dynamic> json) =>
    AppDictCurrency(
      id: json['id'] as int?,
      value: json['value'] as String,
      symbol: json['symbol'] as String,
    );

Map<String, dynamic> _$AppDictCurrencyToJson(AppDictCurrency instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'symbol': instance.symbol,
    };
