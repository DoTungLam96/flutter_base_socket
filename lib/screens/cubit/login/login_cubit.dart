import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:new_base_with_socket/repositories/login_repo.dart';
import 'package:new_base_with_socket/screens/cubit/login/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState.init());

  void login({required String username, required String password}) async {
    try {
      if (username.isEmpty) {
        emit(LoginState.error("Username is not empty"));
        return;
      }
      if (password.isEmpty) {
        emit(LoginState.error("Password is not empty"));
        return;
      }
      emit(LoginState.loading());
      final response = await GetIt.instance<LoginRepositories>().login(
        username,
        password,
      );
      final userResponse = await GetIt.instance<LoginRepositories>().getMe();

      if (response != null && userResponse != null) {
        emit(LoginState.loginSuccess(response, userResponse));
      }
    } on DioError catch (dioError) {
      emit(
        LoginState.error(dioError.message),
      );
    }
  }
}
