import 'package:dio/dio.dart';
import 'package:new_base_with_socket/network/interceptor/api_exception.dart';

extension ExceptionEx on Exception {
  String get errorMessage {
    Exception error = this;

    if (error is DioError && error.error is ApiException) {
      error = error.error as ApiException;
    }

    if (error is ApiException && error.message != null && error.message != "") {
      return error.message ?? '';
    }

    return "IBCoreLocale.current.maintenance_message";
  }

  String? get code {
    if (this is ApiException && (this as ApiException).code != null) {
      return (this as ApiException).code!;
    }

    return null;
  }
}
