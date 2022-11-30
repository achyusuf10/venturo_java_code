import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:venturo_java_code/modules/models/failure.dart';
import 'package:venturo_java_code/modules/models/voucher.dart';

import '../../../../constants/cores/api_const.dart';
import '../../../../constants/dio/exception.dart';
import '../../../../utils/services/api_services.dart';
import '../../../../utils/services/local_db_services.dart';
import '../../../models/response_model.dart';

class VoucherRepository {
  VoucherRepository._();

  /// Memanggil API untuk mendapatkan semua menu
  static Future<Either<Failure, List<Voucher>>> getAll() async {
    try {
      var dio = ApiServices.dioCall(token: LocalDBServices.getToken());
      var user = LocalDBServices.getUser();
      var response =
          await dio.get('${ApiConst.allVoucherPerUser}/${user!.idUser}');
      var responseData = ResponseModel<List<Voucher>>.fromJson(
          response.data, _listVoucherFromJson);
      if (responseData.statusCode != 200) {
        return Left(Failure.customFromJson(response.data));
      }
      return Right(responseData.data);
    } on DioError catch (err) {
      final exception = DioException.fromDioError(err);
      return Left(exception.failure);
    }
  }

  static List<Voucher> _listVoucherFromJson(json) =>
      (json as List<dynamic>?)?.map((e) => Voucher.fromJson(e)).toList() ?? [];
}
