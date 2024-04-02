import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:multiple_localization/multiple_localization.dart';
import 'package:new_base_with_socket/base/base_module.dart';
import 'package:new_base_with_socket/base/navigation_service.dart';
import 'package:new_base_with_socket/base/shared_preferences_manager.dart';
import 'package:new_base_with_socket/core/app_service.dart';
import 'package:new_base_with_socket/core/config_services.dart';
import 'package:new_base_with_socket/core/device_sevices.dart';
import 'package:new_base_with_socket/core/http_services.dart';
import 'package:new_base_with_socket/generated/intl/messages_all.dart';
import 'package:new_base_with_socket/generated/l10n.dart';
import 'package:new_base_with_socket/network/network.dart';
import 'package:new_base_with_socket/theme/app_language.dart';
import 'package:new_base_with_socket/theme/app_theme.dart';
import 'package:new_base_with_socket/widgets/loading_overlay.dart';
import 'package:new_base_with_socket/widgets/toast_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ModuleManagement {
  factory ModuleManagement() {
    return _singleton;
  }

  ModuleManagement._internal();
  static final ModuleManagement _singleton = ModuleManagement._internal();
  final List<BaseModule> _modules = <BaseModule>[];
  final GetIt serviceLocator = GetIt.instance;

  void addModules(List<BaseModule> modules) {
    _modules.addAll(modules);
  }

  List<BaseModule> getModules() => _modules;

  static T? arguments<T extends Argument>(RouteSettings settings, String path,
      T Function(Map<String, dynamic> data) fromMap) {
    if (settings.name != null) {
      final Uri uri = Uri.parse(settings.name ?? '');
      if (settings.arguments != null) {
        return settings.arguments as T;
      }
      if (uri.pathSegments.isNotEmpty || uri.queryParameters.isNotEmpty) {
        final List<String> segments = <String>[...uri.pathSegments];
        if (segments.length % 2 == 1) {
          segments.removeAt(0);
        }
        Map<String, String> result = <String, String>{};
        for (int a = 0; a < segments.length; a = a + 2) {
          result[segments[a]] = segments[a + 1];
        }
        result = <String, String>{...result, ...uri.queryParameters};
        final T arg1 = fromMap(result);
        return arg1;
      }
    }
    return null;
  }

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    for (final BaseModule module in _modules) {
      final pathModule = module.modulePath();
      if ((Uri.parse(settings.name ?? '').path).contains(pathModule)) {
        return module.onGenerateRoute(settings);
      }
    }
    return DefaultRoute.notFound();
  }

  List<LocalizationsDelegate<dynamic>> localizationsDelegates() {
    final List<LocalizationsDelegate<dynamic>> result =
        <LocalizationsDelegate<dynamic>>[];
    result.addAll([
      MultiLocalizationsDelegate.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate
    ]);

    for (final BaseModule module in _modules) {
      result.addAll(module.localizationsDelegates());
    }
    return result;
  }

  Future<void> injectDependencies() async {
    serviceLocator.registerLazySingleton(() => NavigationService());

    final sharedPreferences = await SharedPreferences.getInstance();

    serviceLocator.registerLazySingleton(
        () => SharedPreferencesManager(sharedPreferences: sharedPreferences));

    serviceLocator.registerLazySingleton(
      () => AppCubit(
        const AppState(themeType: ThemeType.light, appLanguage: AppLanguage.vi),
      ),
    );
    serviceLocator.registerLazySingleton(() => ToastWidget());

    serviceLocator
        .registerFactory<IBLoadingOverlay>(() => IBLoadingOverlayImpl());

    serviceLocator.registerLazySingleton(() => DeviceIDService());

    var config = ConfigService();
    serviceLocator.registerSingleton(config);

    String env = "";
    final prevEnv = sharedPreferences.getString("env");
    if (prevEnv != null && prevEnv.isNotEmpty) {
      env = prevEnv;
    } else {
      //to-do
    }

    late Network network;
    if (config.isRelease == false) {
      if (env == Env.Pro.shortName()) {
        network = Network.prodNetwork();
      } else if (env == Env.Uat.shortName()) {
        network = Network.uatNetwork();
      } else {
        network = Network.devNetwork();
      }
    } else {
      network = Network.prodNetwork();
    }

    GetIt.instance.registerLazySingleton<Network>(
      () => network,
    );

    final Dio dio = await setupDio(network.domain.apiUrl);
    serviceLocator.registerLazySingleton<Dio>(() => dio);

    for (final BaseModule module in _modules) {
      module.injectServices(serviceLocator);
    }
  }
}

class DefaultRoute {
  static Route<dynamic> notFound() => MaterialPageRoute<void>(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Page not found !'),
          ),
        ),
      );
}

abstract class Argument {
  factory Argument.fromMap(Map<String, dynamic> map) =>
      throw UnimplementedError();
  Map<String, dynamic> toMap();
}

Route<dynamic> getPageRoute(Widget widget, RouteSettings settings) {
  return MaterialPageRoute(builder: (_) => widget, settings: settings);
}

class MultiLocalizationsDelegate extends AppLocalizationDelegate {
  const MultiLocalizationsDelegate();

  static const AppLocalizationDelegate delegate = MultiLocalizationsDelegate();

  @override
  Future<ILanguage> load(Locale locale) {
    return MultipleLocalizations.load(
        initializeMessages, locale, (l) => ILanguage.load(locale),
        setDefaultLocale: true);
  }
}
