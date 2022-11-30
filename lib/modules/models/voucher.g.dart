// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Voucher _$$_VoucherFromJson(Map<String, dynamic> json) => _$_Voucher(
      idVoucher: json['id_voucher'] as int? ?? 0,
      idUser: json['id_user'] as int? ?? 0,
      nama: json['nama'] as String? ?? '',
      namaUser: json['nama_user'] as String? ?? '',
      nominal: json['nominal'] as int? ?? 0,
      infoVoucher: json['info_voucher'] as String? ?? '',
      periodeMulai: json['periode_mulai'] == null
          ? null
          : DateTime.parse(json['periode_mulai'] as String),
      periodeSelesai: json['periode_selesai'] == null
          ? null
          : DateTime.parse(json['periode_selesai'] as String),
      type: json['type'] as int? ?? 0,
      status: json['status'] as int? ?? 0,
      catatan: json['catatan'] as String? ?? '',
    );

Map<String, dynamic> _$$_VoucherToJson(_$_Voucher instance) =>
    <String, dynamic>{
      'id_voucher': instance.idVoucher,
      'id_user': instance.idUser,
      'nama': instance.nama,
      'nama_user': instance.namaUser,
      'nominal': instance.nominal,
      'info_voucher': instance.infoVoucher,
      'periode_mulai': instance.periodeMulai?.toIso8601String(),
      'periode_selesai': instance.periodeSelesai?.toIso8601String(),
      'type': instance.type,
      'status': instance.status,
      'catatan': instance.catatan,
    };
