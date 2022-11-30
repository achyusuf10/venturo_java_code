import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:venturo_java_code/modules/models/failure.dart';
import 'package:venturo_java_code/modules/models/user.dart';

import '../../../../constants/cores/api_const.dart';
import '../../../../constants/dio/exception.dart';
import '../../../../utils/services/api_services.dart';
import '../../../../utils/services/local_db_services.dart';
import '../../../models/response_model.dart';

class ProfileRepository {
  ProfileRepository._();

  /// Memanggil API untuk mendapatkan user berdasarkan ID
  static Future<Either<Failure, User>> get() async {
    try {
      var dio = ApiServices.dioCall(token: LocalDBServices.getToken());
      var user = LocalDBServices.getUser() as User;
      var response = await dio.get('${ApiConst.detailUser}/${user.idUser}');
      var responseData =
          ResponseModel<User?>.fromJson(response.data, _userFromJson);

      if (responseData.statusCode != 200) {
        return Left(Failure.customFromJson(response.data));
      }
      return Right(responseData.data!);
    } on DioError catch (err) {
      /// Catch Error
      final exception = DioException.fromDioError(err);
      return Left(exception.failure);
    }
  }

  static User? _userFromJson(json) {
    if (json == null) return null;
    return User.fromJson(json as Map<String, dynamic>);
  }

  /// Memanggil API untuk mengubah data user
  static Future<Either<Failure, User>> update(Map<String, String> data) async {
    try {
      var dio = ApiServices.dioCall(token: LocalDBServices.getToken());
      var user = LocalDBServices.getUser() as User;
      var response = await dio.post(
        '${ApiConst.updateUser}/${user.idUser}',
        data: data,
      );
      var responseData =
          ResponseModel<User?>.fromJson(response.data, _userFromJson);

      if (responseData.statusCode != 200) {
        return Left(Failure.customFromJson(response.data));
      }
      return Right(responseData.data!);
    } on DioError catch (err) {
      /// Catch Error
      final exception = DioException.fromDioError(err);
      return Left(exception.failure);
    }
  }

  /// Memanggil API untuk mengubah data foto user
  static Future<Either<Failure, User>> updatePhoto(String photo) async {
    try {
      var dio = ApiServices.dioCall(token: LocalDBServices.getToken());
      var user = LocalDBServices.getUser() as User;
      var response = await dio.post(
        '${ApiConst.updateUserPhoto}/${user.idUser}',
        data: {'image': photo},
      );

      var responseData =
          ResponseModel<User?>.fromJson(response.data, _userFromJson);

      if (responseData.statusCode != 200) {
        return Left(Failure.customFromJson(response.data));
      }
      return Right(responseData.data!);
    } on DioError catch (err) {
      /// Catch Error
      final exception = DioException.fromDioError(err);
      return Left(exception.failure);
    }
  }

  /// Memanggil API untuk mengubah data KTP user
  static Future<Either<Failure, User>> updateKTP(String photo) async {
    try {
      var dio = ApiServices.dioCall(token: LocalDBServices.getToken());
      var user = LocalDBServices.getUser() as User;
      var response = await dio.post(
        '${ApiConst.updateUserKTP}/${user.idUser}',
        data: {'image': photo},
      );
      var responseData =
          ResponseModel<User?>.fromJson(response.data, _userFromJson);

      if (responseData.statusCode != 200) {
        return Left(Failure.customFromJson(response.data));
      }
      return Right(responseData.data!);
    } on DioError catch (err) {
      /// Catch Error
      final exception = DioException.fromDioError(err);
      return Left(exception.failure);
    }
  }
}
