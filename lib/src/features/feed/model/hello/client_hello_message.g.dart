// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_hello_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientHelloMessage _$$_ClientHelloMessageFromJson(
        Map<String, dynamic> json) =>
    _$_ClientHelloMessage(
      subscribeDataType: (json['subscribe_data_type'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      subscribeFilterAssetId:
          (json['subscribe_filter_asset_id'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      apiKey:
          json['apikey'] as String? ?? '010F31F2-AFDF-4BC8-8864-AA698C30E761',
      heartbeat: json['heartbeat'] as bool? ?? false,
      type: json['type'] as String? ?? 'hello',
    );

Map<String, dynamic> _$$_ClientHelloMessageToJson(
        _$_ClientHelloMessage instance) =>
    <String, dynamic>{
      'subscribe_data_type': instance.subscribeDataType,
      'subscribe_filter_asset_id': instance.subscribeFilterAssetId,
      'apikey': instance.apiKey,
      'heartbeat': instance.heartbeat,
      'type': instance.type,
    };
