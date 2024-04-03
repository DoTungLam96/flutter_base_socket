import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:web_socket_channel/io.dart';

class SocketBase {
  IOWebSocketChannel? _channel;

  void configUrl(String url, {String? token}) {
    String userAgent = '';
    if (Platform.isAndroid) {
      userAgent = 'okhttp/3.12.12 (android)';
    }
    if (Platform.isIOS) {
      userAgent = 'iBoard/38 CFNetwork/1333.0.4 Darwin/21.5.0 (ios)';
    }
    if (userAgent.isNotEmpty) {
      WebSocket.userAgent = userAgent;
    }

    Map<String, dynamic>? headers;
    if (token != null && token.isNotEmpty) {
      headers = {};
      headers['sec-websocket-protocol'] = token;
    }

    try {
      _channel = IOWebSocketChannel.connect(url,
          headers: headers, pingInterval: const Duration(seconds: 1));
    } catch (error) {
      debugPrint('error= $error');
    }
  }

  StreamSink? get sink => _channel?.sink;

  Stream? get stream => _channel?.stream;

  int? get readyState => _channel?.innerWebSocket?.readyState;

  void addMessage(String message) {
    try {
      var a = _channel;
      sink?.add(message);
    } catch (error) {
      debugPrint('error= $error');
    }
  }

  void close() {
    sink?.close();
  }
}
