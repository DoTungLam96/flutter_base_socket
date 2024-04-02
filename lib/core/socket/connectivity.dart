import 'dart:io';

class ConnectivityUtils {
  static Future<bool> hasNetwork() async {
    try {
      // const url = GetIt.instance.get<Network>().domain.baseUrl;
      const url = 'google.com';
      final result = await InternetAddress.lookup(url);
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }
}
