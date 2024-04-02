import 'dart:async';
import 'dart:math';

class SendEventQueue {
  final List<Function> _queue = [];
  Completer<void>? _completionSignal;

  void enqueue(Function function) {
    _queue.add(function);

    // If the queue was empty, start the execution
    if (_completionSignal == null || _completionSignal!.isCompleted) {
      _executeQueue();
    }
  }

  Future<void> _executeQueue() async {
    _completionSignal = Completer<void>();

    // Create a copy of the queue to avoid concurrent modification
    final queueCopy = List.from(_queue);

    for (var function in queueCopy) {
      function();
      await Future.delayed(const Duration(milliseconds: 50));
    }
    _completionSignal!.complete();

    if (queueCopy.length != _queue.length) {
      _queue.removeWhere((element) => queueCopy.contains(element));
      _executeQueue();
    } else {
      // Clear the original queue
      _queue.clear();
    }
  }
}

class SubscribeCount {
  final Map<String, int> _counter = {};
  final List<String> _subscribed = [];

  StreamController stockController =
      StreamController<Map<String, List<String>>>.broadcast();

  bool get isEmpty => _counter.isEmpty;

  void _addList(List<String> list) {
    for (String item in list) {
      _counter[item] = (_counter[item] ?? 0) + 1;
    }
    final List<String> newItems = [];
    for (String item in _counter.keys) {
      if (_counter[item] != null &&
          _counter[item]! == 1 &&
          !_subscribed.contains(item)) {
        newItems.add(item);
      }
    }
    //check stream is not close to add data
    if (stockController.isClosed != true) {
      if (newItems.isEmpty) {
        return;
      }
      _subscribed.addAll(newItems);
      stockController.sink.add({'subscribe': newItems});
    }
  }

  void _removeList(List<String> list) {
    final List<String> removeItem = [];

    for (String item in list) {
      if (_counter.containsKey(item)) {
        _counter[item] = _counter[item]! - 1;
        if (_counter[item] == 0) {
          removeItem.add(item);
          _subscribed.remove(item);
          _counter.remove(item);
        }
      }
    }

    if (stockController.isClosed != true) {
      if (removeItem.isEmpty) {
        return;
      }
      stockController.sink.add({'unsubscribe': removeItem});
    }
  }

  void addList(List<String> list) {
    if (list.isEmpty) {
      return;
    }
    _addList(list);
  }

  void removeList(List<String> list) {
    if (_counter.isEmpty || list.isEmpty) {
      return;
    }
    _removeList(list);
  }

  void reset() {
    _counter.clear();
    _subscribed.clear();
  }

  @override
  String toString() {
    return 'Subscribed [$_subscribed] in ${_counter.toString()}';
  }
}
