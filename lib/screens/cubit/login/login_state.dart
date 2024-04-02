import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:new_base_with_socket/models/auth_model.dart';
import 'package:new_base_with_socket/models/user_model.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  factory LoginState.init() = Init;

  factory LoginState.loading() = Loading;

  factory LoginState.error(String? message) = Error;

  factory LoginState.loginSuccess(AuthModel? authModel, UserModel? user) =
      LoginSuccess;
}
