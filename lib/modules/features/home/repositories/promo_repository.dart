import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:venturo_java_code/modules/models/failure.dart';
import 'package:venturo_java_code/modules/models/promo.dart';

import '../../../../constants/cores/api_const.dart';
import '../../../../constants/dio/exception.dart';
import '../../../../utils/services/api_services.dart';
import '../../../../utils/services/local_db_services.dart';
import '../../../models/response_model.dart';

class PromoRepository {
  PromoRepository._();

  /// Memanggil API untuk mendapatkan semua promo
  static Future<Either<Failure, List<Promo>>> getAllByUser() async {
    try {
      var dio = ApiServices.dioCall(token: LocalDBServices.getToken());
      var response = await dio.get(ApiConst.allPromo);
      var responseData = ResponseModel.fromJson(
        response.data,
        _listPromoFromJson,
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

  static List<Promo> _listPromoFromJson(json) =>
      (json as List<dynamic>?)?.map((e) => Promo.fromJson(e)).toList() ?? [];
}
