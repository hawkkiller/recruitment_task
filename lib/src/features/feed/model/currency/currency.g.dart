// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Currency _$$_CurrencyFromJson(Map<String, dynamic> json) => _$_Currency(
      askPrice: const DecimalConverter().fromJson(json['ask_price'] as num),
      time: DateTime.parse(json['time_coinapi'] as String),
    );

Map<String, dynamic> _$$_CurrencyToJson(_$_Currency instance) =>
    <String, dynamic>{
      'ask_price': const DecimalConverter().toJson(instance.askPrice),
      'time_coinapi': instance.time.toIso8601String(),
    };
