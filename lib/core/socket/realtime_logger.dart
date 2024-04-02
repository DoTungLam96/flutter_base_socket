import 'package:get_it/get_it.dart';
import 'package:new_base_with_socket/core/config_services.dart';

enum RealtimeType { priceStream, txnStream }

abstract class RealtimeLogger {
  SocketLogger? _logger;

  void setLogger(SocketLogger logger) {
    _logger = logger;
  }

  Future log(String message, {RealtimeType? type}) async {
    dPrint('socket -> ${type != null ? '${type.name}: ' : ''}$message');
    return _logger?.log('${type != null ? '${type.name}: ' : ''}$message');
  }
}

abstract class SocketLogger {
  Future log(String message);

  Future logs(List<String> messages);
}

void dPrint(Object? object) {
  final config = GetIt.instance.get<ConfigService>();
  if (config.isRelease == false) {
    print(object);
  }
}
