// ignore: import_of_legacy_library_into_null_safe

import 'package:new_base_with_socket/network/env/devEnv.dart';
import 'package:new_base_with_socket/network/env/proEnv.dart';
import 'package:new_base_with_socket/network/env/uatEnv.dart';
import 'package:new_base_with_socket/network/network_env.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Env {
  Dev,
  Uat,
  Pro,
}

extension ParseToString on Env {
  String shortName() {
    return toString().split('.').last;
  }
}

class Network {
  // Init environment
  Env _env = Env.Uat;

  NetworkEnv get domain {
    switch (_env) {
      case Env.Dev:
        return UatEnv();
      case Env.Uat:
        return UatEnv();
      case Env.Pro:
        return ProEnv();
      default:
        return DevEnv();
    }
  }

  Env get env => _env;

  Network initEnv({required Env newEnv}) {
    _env = newEnv;
    return this;
  }

  static Network devNetwork() => Network().initEnv(newEnv: Env.Dev);
  static Network uatNetwork() => Network().initEnv(newEnv: Env.Uat);
  static Network prodNetwork() => Network().initEnv(newEnv: Env.Pro);

  static void changeDev() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("env", Env.Dev.shortName());
  }

  static void changeUat() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("env", Env.Uat.shortName());
  }

  static void changeProd() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("env", Env.Pro.shortName());
  }
}
