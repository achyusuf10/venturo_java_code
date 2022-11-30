import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:venturo_java_code/modules/models/failure.dart';
import 'package:venturo_java_code/modules/models/promo.dart';
import 'package:venturo_java_code/modules/models/response_model.dart';

import '../../../../constants/cores/api_const.dart';
import '../../../../constants/dio/exception.dart';
import '../../../../utils/services/api_services.dart';
import '../../../../utils/services/local_db_services.dart';

class PromoRepository {
  PromoRepository._();

  /// Memanggil API untuk mendapatkan promo berdasarkan id
  static Future<Either<Failure, Promo>> getFromId(int idPromo) async {
    try {
      var dio = ApiServices.dioCall(token: LocalDBServices.getToken());
      var response = await dio.get('${ApiConst.detailPromo}/$idPromo');
      var responseData =
          ResponseModel<Promo?>.fromJson(response.data, _promoFromJson);
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

  // Konversi Promo dari Json
  static Promo? _promoFromJson(json) =>
      json == null ? null : Promo.fromJson(json as Map<String, dynamic>);
}
