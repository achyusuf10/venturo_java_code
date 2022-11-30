import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:venturo_java_code/modules/models/order.dart' as orderM;

import '../../../../constants/cores/api_const.dart';
import '../../../../constants/dio/exception.dart';
import '../../../../utils/services/api_services.dart';
import '../../../../utils/services/local_db_services.dart';
import '../../../models/failure.dart';
import '../../../models/response_model.dart';
import '../../../models/user.dart';

class OrderRepository {
  OrderRepository._();

  /// Memanggil API untuk mendapatkan semua order aktif
  static Future<Either<Failure, List<orderM.Order>>> getOnGoing() async {
    try {
      var dio = ApiServices.dioCall(token: LocalDBServices.getToken());
      var user = LocalDBServices.getUser() as User;
      var response = await dio.get('${ApiConst.onGoingOrder}/${user.idUser}');
      var responseData = ResponseModel<List<orderM.Order>>.fromJson(
        response.data,
        _listOrderFromJson,
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

  static List<orderM.Order> _listOrderFromJson(json) =>
      (json as List<dynamic>?)?.map((e) => orderM.Order.fromJson(e)).toList() ??
      [];

  static List<orderM.Order> _listHistoryOrderFromJson(json) =>
      (json == null || json['listData'] == null)
          ? []
          : (json['listData'] as List<dynamic>?)
                  ?.map((e) => orderM.Order.fromJson(e))
                  .toList() ??
              [];

  /// Memanggil API untuk mendapatkan semua riwayat order
  static Future<Either<Failure, List<orderM.Order>>> getHistory() async {
    try {
      var dio = ApiServices.dioCall(token: LocalDBServices.getToken());
      var user = LocalDBServices.getUser() as User;
      var response = await dio.post('${ApiConst.historyOrder}/${user.idUser}');

      var responseData = ResponseModel<List<orderM.Order>>.fromJson(
        response.data,
        _listHistoryOrderFromJson,
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

//   /// Memanggil API untuk mendapatkan order berdasarkan ID
  static Future<Either<Failure, orderM.Order>> getFromId(int id) async {
    try {
      var dio = ApiServices.dioCall(token: LocalDBServices.getToken());
      var response = await dio.get('${ApiConst.detailOrder}/$id');

      var responseData = ResponseModel<orderM.Order>.fromJson(
        response.data,
        _orderFromJson,
      );
      return Right(responseData.data);
    } on DioError catch (err) {
      final exception = DioException.fromDioError(err);
      return Left(exception.failure);
    }
  }

  static orderM.Order _orderFromJson(json) {
    json as Map<String, dynamic>?;
    if (json == null) return orderM.Order();
    json['order']['menu'] = json['detail'];
    return orderM.Order.fromJson((json)['order']);
  }

  /// Memanggil API untuk membatalkan pesanan
  static Future<int> cancel(int id) async {
    try {
      var dio = ApiServices.dioCall(token: LocalDBServices.getToken());
      var response = await dio.post('${ApiConst.cancelOrder}/$id');

      return response.data['status_code'];
    } on DioError {
      return 500;
    }
  }
}
