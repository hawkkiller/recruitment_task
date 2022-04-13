import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_hello_message.freezed.dart';

part 'client_hello_message.g.dart';

@freezed
class ClientHelloMessage with _$ClientHelloMessage {
  const ClientHelloMessage._();

  const factory ClientHelloMessage({
    @JsonKey(name: 'subscribe_data_type')
        required List<String> subscribeDataType,
    @JsonKey(name: 'subscribe_filter_asset_id')
        required List<String> subscribeFilterAssetId,
    @JsonKey(name: 'apikey')
    @Default('010F31F2-AFDF-4BC8-8864-AA698C30E761')
        String apiKey,
    @Default(false) bool heartbeat,
    @Default('hello') String type,
  }) = _ClientHelloMessage;

  factory ClientHelloMessage.fromJson(Map<String, dynamic> json) =>
      _$ClientHelloMessageFromJson(json);
}
