// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../constants/commons/setting_json.dart';
import 'detail_order.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@unfreezed
class Order with _$Order {
  Order._();
  factory Order({
    @JsonKey(name: 'id_order') @Default(0) int idOrder,
    @JsonKey(name: 'no_struk') @Default('') String noStruk,
    @Default('') String nama,
    @JsonKey(name: 'id_voucher') @Default(0) int idVoucher,
    @JsonKey(name: 'nama_voucher') @Default('') String namaVoucher,
    @Default(0) int diskon,
    @Default(0) int potongan,
    @JsonKey(name: 'total_bayar') @Default(0) int totalBayar,
    @JsonKey(fromJson: SettingJson.tglFromJson, toJson: SettingJson.tglToJson)
        DateTime? tanggal,
    @Default(0) int status,
    @Default([]) List<DetailOrder> menu,
  }) = _Order;

  /// Mendapatkan total harga tanpa potongan
  int get total => totalBayar + potongan;
  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
