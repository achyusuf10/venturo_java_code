import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:venturo_java_code/modules/models/failure.dart';
import 'package:venturo_java_code/modules/models/user.dart';

import '../../../../constants/cores/api_const.dart';
import '../../../../constants/dio/exception.dart';
import '../../../../utils/services/api_services.dart';
import '../../../models/response_model.dart';

class LoginRepository {
  LoginRepository._();

  static final Dio _dio = ApiServices.dioCall();

  /// Memanggil API untuk login dengan email dan kata sandi
  static Future<Either<Failure, Map<String, dynamic>>> getUser(
      String email, String password) async {
    try {
      /// Memanggil API login dengan method POST
      var response = await _dio.post(ApiConst.login, data: {
        'email': email,
        'password': password,
      });
      var loginRes = ResponseModel<Map<String, dynamic>>.fromJson(
          response.data, _loginResFromJson);

      if (loginRes.statusCode != 200) {
        return Left(Failure.customFromJson(response.data));
      }
      return Right(loginRes.data);
    } on DioError catch (err) {
      /// Catch Error
      final exception = DioException.fromDioError(err);
      return Left(exception.failure);
    }
  }

  /// Method Custom From Json
  static Map<String, dynamic> _loginResFromJson(json) {
    json as Map<String, dynamic>?;
    if (json == null || json['user'] == null) return {};
    return {'token': json['token'], 'user': User.fromJson(json['user'])};
  }

  /// Memanggil API untuk login dengan email google dan kata sandi
  static Future<Either<Failure, Map<String, dynamic>>> getUserFromGoogle(
      String nama, String email) async {
    try {
      /// Memanggil API login dengan method POST
      var response = await _dio.post(ApiConst.login, data: {
        'nama': nama,
        'email': email,
        'is_google': 'is_google',
      });

      var loginRes = ResponseModel<Map<String, dynamic>>.fromJson(
          response.data, _loginResFromJson);

      /// Jika Login Tidak Berhasil
      if (loginRes.statusCode != 200) {
        return Left(Failure.customFromJson(response.data));
      }
      return Right(loginRes.data);
    } on DioError catch (err) {
      /// Catch Error
      final exception = DioException.fromDioError(err);
      return Left(exception.failure);
    }
  }
}
