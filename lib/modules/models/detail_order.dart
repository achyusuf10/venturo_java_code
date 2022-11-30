// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../constants/commons/constants.dart';

part 'detail_order.freezed.dart';
part 'detail_order.g.dart';

@unfreezed
class DetailOrder with _$DetailOrder {
  const DetailOrder._();
  factory DetailOrder({
    @JsonKey(name: 'id_menu') required int idMenu,
    @Default('') String kategori,
    @Default('') String topping,
    @Default('') String nama,
    String? foto,
    required int jumlah,
    @Default('') @JsonKey(fromJson: hargaFromJson) String harga,
    required int total,
    @Default('') String catatan,
  }) = _DetailOrder;

  /// Apakah menu ini adalah makanan
  bool get isFood => kategori == AppConst.foodCategory;

  /// Apakah menu ini adalah minuman
  bool get isDrink => kategori == AppConst.drinkCategory;
  factory DetailOrder.fromJson(Map<String, dynamic> json) =>
      _$DetailOrderFromJson(json);
}

String hargaFromJson(dynamic value) {
  return value.toString();
}
