import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:new_base_with_socket/base/constants.dart';
import 'package:new_base_with_socket/base/shared_preferences_manager.dart';
import 'package:new_base_with_socket/models/auth_model.dart';
import 'package:new_base_with_socket/models/user_model.dart';
import 'package:new_base_with_socket/services/login/login_service.dart';

abstract class LoginRepositories {
  Future<AuthModel?> login(String username, String password,
      {String? captchaToken, bool? isSaveLogin});

  Future<UserModel?> getMe();
}

final sl = GetIt.instance;

class LoginRepositoriesImpl implements LoginRepositories {
  LoginRepositoriesImpl({required this.loginService});

  final SharedPreferencesManager sharedPreferencesManager = sl.get();

  LoginService loginService;

  @override
  Future<AuthModel?> login(String username, String password,
      {String? captchaToken, bool? isSaveLogin}) async {
    try {
      final _request = {'username': username, 'password': password};

      final _response = await loginService.login(_request);

      await sharedPreferencesManager.putString(
          KEY_ACCESS_TOKEN, _response.data!.accessToken);

      return _response.data;
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<UserModel?> getMe() async {
    try {
      final _response = await loginService.getMe();

      return _response.data;
    } catch (e) {
      return null;
    }
  }
}
