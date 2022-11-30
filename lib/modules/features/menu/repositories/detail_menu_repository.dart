import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:venturo_java_code/modules/models/detail_menu.dart';
import 'package:venturo_java_code/modules/models/failure.dart';
import 'package:venturo_java_code/modules/models/response_model.dart';

import '../../../../constants/cores/api_const.dart';
import '../../../../constants/dio/exception.dart';
import '../../../../utils/services/api_services.dart';
import '../../../../utils/services/local_db_services.dart';

class DetailMenuRepository {
  DetailMenuRepository._();

  /// Memanggil API untuk mendapatkan menu berdasarkan id
  static Future<Either<Failure, DetailMenu>> getFromId(int idMenu) async {
    try {
      var dio = ApiServices.dioCall(token: LocalDBServices.getToken());
      var response = await dio.get('${ApiConst.detailMenu}/$idMenu');
      var responseData = ResponseModel<DetailMenu?>.fromJson(
        response.data,
        (json) => json == null
            ? null
            : DetailMenu.fromJson(json as Map<String, dynamic>),
      );
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
