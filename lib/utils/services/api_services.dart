import 'package:dio/dio.dart';

import '../../constants/cores/api_const.dart';

/// Api Services
class ApiServices {
  /// Define singleton instance for ApiServices
  ApiServices._();

  /// Mendapatkan object dio berdasarkan timeout dan tokennya
  static Dio dioCall(
      {int timeout = 20000, String? token, String? authorization}) {
    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    if (token != null) {
      headers['token'] = token;
    }
    if (authorization != null) {
      headers['Authorization'] = authorization;
    }

    var dio = Dio(
      BaseOptions(
        headers: headers,
        baseUrl: ApiConst.apiBaseUrl,
        connectTimeout: timeout,
      ),
    );
    return dio;
  }
}
