import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:venturo_java_code/modules/models/failure.dart';
import 'package:venturo_java_code/modules/models/menu.dart';
import 'package:venturo_java_code/modules/models/response_model.dart';

import '../../../../constants/cores/api_const.dart';
import '../../../../constants/dio/exception.dart';
import '../../../../utils/services/api_services.dart';
import '../../../../utils/services/local_db_services.dart';

class MenuRepository {
  MenuRepository._();

  /// Memanggil API untuk mendapatkan semua menu
  static Future<Either<Failure, List<Menu>>> getAll() async {
    try {
      var dio = ApiServices.dioCall(token: LocalDBServices.getToken());
      var response = await dio.get(ApiConst.allMenu);

      var responseData = ResponseModel.fromJson(
        response.data,
        _listMenuFromJson,
      );

      if (responseData.statusCode != 200) {
        return Left(Failure.customFromJson(response.data));
      }
      return Right(responseData.data);
    } on DioError catch (err) {
      final exception = DioException.fromDioError(err);
      return Left(exception.failure);
    }
  }

  static List<Menu> _listMenuFromJson(json) =>
      (json as List<dynamic>?)?.map((e) => Menu.fromJson(e)).toList() ?? [];
}
