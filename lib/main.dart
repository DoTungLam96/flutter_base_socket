import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:new_base_with_socket/base/base_module.dart';
import 'package:new_base_with_socket/core/app_service.dart';
import 'package:new_base_with_socket/core/module_management.dart';
import 'package:new_base_with_socket/core/socket/realtime_management.dart';
import 'package:new_base_with_socket/generated/l10n.dart';
import 'package:new_base_with_socket/network/interceptor/cul_interceptor.dart';
import 'package:new_base_with_socket/network/interceptor/error_interceptor.dart';
import 'package:new_base_with_socket/network/network.dart';
import 'package:new_base_with_socket/screens/app_module.dart';
import 'package:new_base_with_socket/screens/login_screen.dart';
import 'package:new_base_with_socket/theme/app_language.dart';
import 'package:new_base_with_socket/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  GetIt sl = GetIt.instance;

  final List<BaseModule> modules = <BaseModule>[AppModule()];

  ModuleManagement().addModules(modules);

  await ModuleManagement().injectDependencies();

  final AppCubit cubit = GetIt.instance.get();

  final Dio dio = sl.get();

  dio.options.baseUrl = GetIt.instance.get<Network>().domain.apiUrl;

  dio.interceptors.addAll([
    CurlInterceptor(),
    LogInterceptor(requestBody: true, responseBody: true),
  ]);

  dio.interceptors.add(
    HandleErrorInterceptor(errorTokenExpire: () {
      print("Force logout");
    }),
  );

  //init socket realtime
  RealtimeManagement.instance
      .initWith(GetIt.instance.get<Network>().domain.priceStream);

  cubit.applySetting(
      theme: cubit.getThemeDefault(),
      appLanguage: cubit.getAppLanguageDefault());
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final localizationsDelegates = ModuleManagement().localizationsDelegates();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    localizationsDelegates.add(ILanguage.delegate);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: GetIt.instance<AppCubit>()),
      ],
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          Locale locale = Locale(AppLanguage.vi.name, "");
          if (state.appLanguage == AppLanguage.en) {
            locale = Locale(AppLanguage.en.name, "");
          }
          return MaterialApp(
            title: 'Flutter Base',
            onGenerateRoute: (settings) =>
                ModuleManagement().onGenerateRoute(settings),
            theme: state.themeType.data,
            localizationsDelegates: localizationsDelegates,
            locale: locale,
            supportedLocales: const [
              Locale('en', ""),
              Locale('vi', ""), // English, no country code
            ],
            home: LoginScreen(),
          );
        },
      ),
    );
  }
}
