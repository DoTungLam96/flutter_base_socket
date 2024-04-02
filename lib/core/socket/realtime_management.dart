import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:new_base_with_socket/core/constant.dart';
import 'package:new_base_with_socket/core/socket/connectivity.dart';
import 'package:new_base_with_socket/core/socket/realtime_logger.dart';

import 'socket_base.dart';
import 'subscribe_count.dart';

/// [sessionByList] stock realtime
/// [indexRealtime] Indexes realtime
/// [tableAdd] leTable realtime (matched orders)
/// [matchedVolByPrice] BUSD realtime
/// [notifySessionByList] exchanges session
/// [indexValueHistory] net flow realtime
/// [systemStatusChangedV2] update estimate prices status
enum Topic { sessionByList, indexRealtime, systemStatusChanged }

extension ParseToString on Topic {
  String toShortString() {
    switch (this) {
      case Topic.sessionByList:
        return 'stockRealtimeByListV2';
      case Topic.indexRealtime:
        return 'notifyIndexRealtimeByListV2';

      default:
        return '';
    }
  }
}

enum SocketEvent {
  connected,
  connecting,
  close,
  connectFailed,
  internetFailed,
  internetConnected
}

class RealtimeManagement with RealtimeLogger {
  RealtimeManagement._internal();

  static final RealtimeManagement instance = RealtimeManagement._internal();
  late final SocketBase socket;
  late final String _url;
  late final int _delay; //seconds

  SubscribeCount indexCount = SubscribeCount();
  SubscribeCount stockCount = SubscribeCount();

  StreamSubscription? _streamSubscription;
  StreamController realtimeController =
      StreamController<Map<String, Map<String, dynamic>>>.broadcast();

  Stream<Map<String, Map<String, dynamic>>> get stream =>
      realtimeController.stream.transform(transformer);

  var transformer = StreamTransformer<Map<String, Map<String, dynamic>>,
      Map<String, Map<String, dynamic>>>.fromHandlers(handleData: (data, sink) {
    sink.add(data);
  });

  StreamController connectedSocketController =
      StreamController<SocketEvent>.broadcast();

  Stream get connectedStream => connectedSocketController.stream;

  StreamSubscription? _connectivitySubscription;
  bool? _hasConnection;

  final SendEventQueue _sendEventQueue = SendEventQueue();

  void initWith(String url, {int delay = 2}) {
    _url = url;
    _delay = delay;
    socket = SocketBase();
    _countSubscribe();

    // Create socket connection is required initially, as the onConnectivityChanged event may not be triggered.
    _initStockSocket();
    _handleWhenConnectivityChange();
  }

  void initStockSocket() {
    _initStockSocket();
  }

  void cancelSubscription() {
    socket.close();
    _streamSubscription?.cancel();
  }

  void _addMessage(String message) {
    socket.addMessage(message);
  }

  void _handleWhenConnectivityChange() {
    _connectivitySubscription?.cancel();
    _connectivitySubscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) async {
      if (result != ConnectivityResult.none) {
        _checkInternetConnection();
      }
    });
  }

  Future<bool?> _checkInternetConnection() async {
    bool? previousConnection = _hasConnection;
    previousConnection = await ConnectivityUtils.hasNetwork();

    if (previousConnection != _hasConnection) {
      if (previousConnection) {
        _initStockSocket(isInit: _hasConnection == null);
        connectedSocketController.sink.add(SocketEvent.internetConnected);
        log('Internet connected', type: RealtimeType.priceStream);
      } else {
        connectedSocketController.sink.add(SocketEvent.internetFailed);
        log('Internet connect failed', type: RealtimeType.priceStream);
      }
      _hasConnection = previousConnection;
    }
    return _hasConnection;
  }

  void _subscribeEvent(Map<String, List<String>> event, Topic topic) {
    if (event['subscribe'] != null) {
      final List<String>? stocks = event['subscribe'];
      final data = {
        'type': SubAction.kSubscribe,
        'topic': topic.toShortString(),
        'variables': stocks,
      };

      final message = jsonEncode(data).toString();
      log(message);
      _addMessage(message);
    }
    if (event['unsubscribe'] != null) {
      final List<String>? stocks = event['unsubscribe'];
      final data = {
        'type': SubAction.kUnsubscribe,
        'topic': topic.toShortString(),
        'variables': stocks,
      };

      final message = jsonEncode(data).toString();
      log(message);
      _addMessage(message);
    }
  }

  void _subscribeExchangeEvent(Map<String, List<String>> event, Topic topic) {
    if (event['subscribe'] != null) {
      final List<String>? exchanges = event['subscribe'];

      final data = {
        'type': SubAction.kSubscribe,
        'topic': topic.toShortString(),
        'variables': {'markets': exchanges}
      };

      final message = jsonEncode(data).toString();
      log(message);
      _addMessage(message);
    }
    if (event['unsubscribe'] != null) {
      final List<String>? exchanges = event['unsubscribe'];

      final data = {
        'type': SubAction.kUnsubscribe,
        'topic': topic.toShortString(),
        'variables': {'markets': exchanges}
      };

      final message = jsonEncode(data).toString();
      log(message);
      _addMessage(message);
    }
  }

  void _subscribeTopic(String type, Topic topic) {
    final data = {
      'type': type,
      'topic': topic.toShortString(),
    };

    final message = jsonEncode(data).toString();
    log(message);
    _addMessage(message);
  }

  void _countSubscribe() {
    indexCount.stockController.stream.listen((event) {
      _sendEventQueue.enqueue(() {
        _subscribeEvent(event, Topic.indexRealtime);
      });
    });

    stockCount.stockController.stream.listen((event) {
      _sendEventQueue.enqueue(() {
        _subscribeEvent(event, Topic.sessionByList);
      });
    });
  }

  void _initStockSocket({isInit = false}) {
    connectedSocketController.sink.add(SocketEvent.connecting);
    log('Connecting', type: RealtimeType.priceStream);
    socket.configUrl(_url);
    // socket return value

    // Reset all counters
    indexCount.reset();
    stockCount.reset();

    _streamSubscription?.cancel();

    _streamSubscription = socket.stream?.listen(
      (message) {
        if (message.toString() == '{"type":"ack"}') {
          if (!isInit) {
            connectedSocketController.sink.add(SocketEvent.connected);
            log('Connected', type: RealtimeType.priceStream);
          }
        } else if (message.toString().startsWith('Subscribed')) {
          log(message, type: RealtimeType.priceStream);
        }
        final data = message.split('#');
        if (data.length > 1) {
          switch (data[0]) {
            case 'I':
              final Map<String, dynamic> indexRealtimeMap = {};
              final indexData = data[1].split('|');
              LimitKey.kIndexRealtime.asMap().forEach((i, value) {
                indexRealtimeMap[value.toString()] = indexData[i];
              });
              final Map<String, Map<String, dynamic>> item = {
                'index': indexRealtimeMap
              };
              realtimeController.sink.add(item);
              break;
            case 'S':
              //   print(message);
              final Map<String, dynamic> stockRealtimeMap = {};
              final stockData = data[1].split('|');
              LimitKey.kStockRealtime.asMap().forEach((i, value) {
                stockRealtimeMap[value.toString()] = stockData[i];
              });
              final Map<String, Map<String, dynamic>> item = {
                'stock': stockRealtimeMap
              };
              realtimeController.sink.add(item);
              break;
            case 'L':
              final Map<String, dynamic> mapData = {};
              final leData = data[1].split('|');
              LimitKey.kLeTableKeys.asMap().forEach((i, value) {
                mapData[value.toString()] = leData[i];
              });
              final Map<String, Map<String, dynamic>> item = {
                'leTableAdd': mapData
              };
              realtimeController.sink.add(item);
              break;
            case 'M':
              final Map<String, dynamic> mapData = {};
              final matchedVolByPriceData = data[1].split('|');
              LimitKey.kMatchedByPrice.asMap().forEach((i, value) {
                mapData[value.toString()] = matchedVolByPriceData[i];
              });
              final Map<String, Map<String, dynamic>> item = {
                'matchedVolByPrice': mapData
              };
              realtimeController.sink.add(item);
              break;
          }
        } else {
          try {
            if (message.toString().startsWith('{')) {
              final Map<String, dynamic> data = json.decode(message);
            }
          } on FormatException catch (e) {
            print("priceStream FormatException error $e");
          }
        }
      },
      onError: (e) {
        connectedSocketController.sink.add(SocketEvent.connectFailed);
        _streamSubscription?.cancel();
        log('onError: ${e.toString()}', type: RealtimeType.priceStream);
        Future.delayed(Duration(seconds: _delay), () {
          _checkInternetConnection();
        });
      },
      onDone: () {
        connectedSocketController.sink.add(SocketEvent.close);
        _streamSubscription?.cancel();
        log('onDone', type: RealtimeType.priceStream);
        Future.delayed(Duration(seconds: _delay), () {
          _initStockSocket(isInit: false);
        });
      },
    );
    final datas = {
      'type': 'init',
    };
    final message = jsonEncode(datas).toString();
    log(message, type: RealtimeType.priceStream);
    _addMessage(message);
  }

  void addListIndex(List<String> listIndex) {
    indexCount.addList(listIndex);
  }

  void removeListIndex(List<String> listIndex) {
    indexCount.removeList(listIndex);
  }

  void addStocks(List<String> stocks) {
    if (stockCount.isEmpty) {
      _sendEventQueue.enqueue(() {
        _subscribeTopic(SubAction.kSubscribe, Topic.systemStatusChanged);
      });
    }
    stockCount.addList(stocks);
  }

  void removeStocks(List<String> stocks) {
    if (stocks.isEmpty) {
      return;
    }
    stockCount.removeList(stocks);
    if (stockCount.isEmpty) {
      _sendEventQueue.enqueue(() {
        _subscribeTopic(SubAction.kUnsubscribe, Topic.systemStatusChanged);
      });
    }
  }

  int? get readyState => socket.readyState;
}
