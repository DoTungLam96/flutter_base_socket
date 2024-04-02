import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:new_base_with_socket/core/module_management.dart';
import 'package:new_base_with_socket/network/network.dart';
import 'package:new_base_with_socket/repositories/login_repo.dart';
import 'package:new_base_with_socket/screens/cubit/login/login_cubit.dart';
import 'package:new_base_with_socket/screens/home_screen.dart';
import 'package:new_base_with_socket/screens/login_screen.dart';
import 'package:new_base_with_socket/services/login/login_service.dart';

import '../base/base_module.dart';

class AppModule extends BaseModule {
  @override
  void injectServices(GetIt getIt) {
    final dio = getIt.get<Dio>();
    final Network network = getIt.get();

    //register services
    getIt.registerLazySingleton(
        () => LoginService(dio, baseUrl: network.domain.tAPIUrl));

    //register repositories
    getIt.registerLazySingleton<LoginRepositories>(
      () => LoginRepositoriesImpl(
        loginService: getIt.get(),
      ),
    );

    getIt.registerFactory<LoginCubit>(() => LoginCubit());
  }

  @override
  List<LocalizationsDelegate> localizationsDelegates() {
    return [];
  }

  @override
  String modulePath() {
    return "app";
  }

  @override
  Route onGenerateRoute(RouteSettings settings) {
    if ((settings.name ?? '').contains('/login')) {
      return getPageRoute(const LoginScreen(), settings);
    }
    if ((settings.name ?? '').contains('/home')) {
      HomeArg? args;
      if (settings.arguments is HomeArg) {
        args = settings.arguments as HomeArg;
      }
      return getPageRoute(HomeScreen(homeArg: args), settings);
    }
    return DefaultRoute.notFound();
  }
}
