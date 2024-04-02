import 'package:dio/dio.dart';
import 'package:new_base_with_socket/core/base_response.dart';
import 'package:new_base_with_socket/models/auth_model.dart';
import 'package:new_base_with_socket/models/user_model.dart';
import 'package:retrofit/retrofit.dart';

part 'login_service.g.dart';

@RestApi()
abstract class LoginService {
  factory LoginService(Dio dio, {String baseUrl}) = _LoginService;

  @POST('/authentication/api/v1/login')
  Future<BaseResponse<AuthModel>> login(@Body() Map<String, dynamic> request,
      {@Header('gCaptcha') String? captchaToken});

  @GET('/users/auth/me')
  Future<BaseResponse<UserModel>> getMe();

  // @POST('/authentication/api/v1/exchange-biometric-token')
  // Future<BaseResponse<AuthModel>> loginViaBiometric(
  //   @Body() Map<String, dynamic> request,
  // );
  // @POST('/authentication/api/v1/refresh-token')
  // Future<BaseResponse<AuthModel>> refreshToken(
  //   @Body() Map<String, dynamic> request,
  // );
}
