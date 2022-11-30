import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:venturo_java_code/modules/models/failure.dart';

import '../../../../constants/cores/api_const.dart';
import '../../../../constants/dio/exception.dart';
import '../../../../utils/services/api_services.dart';
import '../../../../utils/services/local_db_services.dart';
import '../../../models/discount.dart';
import '../../../models/response_model.dart';
import '../../../models/user.dart';

class DiscountRepository {
  DiscountRepository._();

  /// Memanggil API untuk mendapatkan semua menu
  static Future<Either<Failure, List<Discount>>> getAll() async {
    try {
      var dio = ApiServices.dioCall(token: LocalDBServices.getToken());
      var user = LocalDBServices.getUser() as User;
      var response =
          await dio.get('${ApiConst.allDiscountPerUser}/${user.idUser}');
      var responseData = ResponseModel<List<Discount>>.fromJson(
        response.data,
        _listDiscountFromJson,
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

  static List<Discount> _listDiscountFromJson(json) =>
      (json as List<dynamic>?)?.map((e) => Discount.fromJson(e)).toList() ?? [];
}
