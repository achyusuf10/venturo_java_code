import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:venturo_java_code/modules/models/order.dart';
import 'package:venturo_java_code/modules/models/response_model.dart';

void main() {
  final fileRes = File(
          '/home/yusuf/Project/Flutter/Kerja Venturo/venturo_java_code/test/file1.json')
      .readAsStringSync();
  List<Order> listHistoryOrderFromJson(json) => (json['listData'] == null)
      ? []
      : (json['listData'] as List<dynamic>?)
              ?.map((e) => Order.fromJson(e))
              .toList() ??
          [];
  test('Test From Json', () {
    var testRes = ResponseModel<List<Order>>.fromJson(
        json.decode(fileRes), listHistoryOrderFromJson);
  });
}
