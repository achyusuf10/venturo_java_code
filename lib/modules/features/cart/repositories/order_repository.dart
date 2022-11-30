import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../constants/cores/api_const.dart';
import '../../../../utils/services/api_services.dart';
import '../../../../utils/services/local_db_services.dart';
import '../../../models/cart_req.dart';

class OrderRepository {
  OrderRepository._();

  /// Memanggil API untuk mendapatkan semua menu
  static Future<Response?> add(CartReq cartReq) async {
    try {
      var dio = ApiServices.dioCall(token: LocalDBServices.getToken());
      var response = await dio.post(
        ApiConst.addOrder,
        data: json.encode(cartReq.toMap()),
      );

      return response;
    } on DioError {
      return null;
    }
  }
}
