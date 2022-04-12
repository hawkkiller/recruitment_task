import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:recruitment_task/src/features/feed/model/hello/client_hello_message.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

abstract class IFeedWebsocketsDatasource {
  const IFeedWebsocketsDatasource();

  Stream<Object> hello(ClientHelloMessage msg);

  abstract final WebSocketChannel _channel;
}

class FeedWebsocketsDatasource implements IFeedWebsocketsDatasource {
  FeedWebsocketsDatasource() : _channel = _connect() {
    _stream = _channel.stream.asBroadcastStream().cast();
  }

  @override
  final WebSocketChannel _channel;

  Stream<Object> get stream => _stream;

  late final Stream<Object> _stream;

  @override
  Stream<Object> hello(ClientHelloMessage msg) async* {
    _channel.sink.add(
      jsonEncode(msg.toJson()),
    );
    yield* _stream;
  }

  static WebSocketChannel _connect() => WebSocketChannel.connect(
        Uri.parse(
          'ws://ws-sandbox.coinapi.io/v1/',
        ),
      );
}
