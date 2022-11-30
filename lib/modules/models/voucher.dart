// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher.freezed.dart';
part 'voucher.g.dart';

@freezed
class Voucher with _$Voucher {
  factory Voucher({
    @JsonKey(name: 'id_voucher') @Default(0) int idVoucher,
    @JsonKey(name: 'id_user') @Default(0) int idUser,
    @Default('') String nama,
    @JsonKey(name: 'nama_user') @Default('') String namaUser,
    @Default(0) int nominal,
    @JsonKey(name: 'info_voucher') @Default('') String infoVoucher,
    @JsonKey(name: 'periode_mulai') DateTime? periodeMulai,
    @JsonKey(name: 'periode_selesai') DateTime? periodeSelesai,
    @Default(0) int type,
    @Default(0) int status,
    @Default('') String catatan,
  }) = _Voucher;

  factory Voucher.fromJson(Map<String, dynamic> json) =>
      _$VoucherFromJson(json);
}
