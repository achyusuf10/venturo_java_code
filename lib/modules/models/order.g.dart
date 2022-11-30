// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      idOrder: json['id_order'] as int? ?? 0,
      noStruk: json['no_struk'] as String? ?? '',
      nama: json['nama'] as String? ?? '',
      idVoucher: json['id_voucher'] as int? ?? 0,
      namaVoucher: json['nama_voucher'] as String? ?? '',
      diskon: json['diskon'] as int? ?? 0,
      potongan: json['potongan'] as int? ?? 0,
      totalBayar: json['total_bayar'] as int? ?? 0,
      tanggal: SettingJson.tglFromJson(json['tanggal'] as String?),
      status: json['status'] as int? ?? 0,
      menu: (json['menu'] as List<dynamic>?)
              ?.map((e) => DetailOrder.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id_order': instance.idOrder,
      'no_struk': instance.noStruk,
      'nama': instance.nama,
      'id_voucher': instance.idVoucher,
      'nama_voucher': instance.namaVoucher,
      'diskon': instance.diskon,
      'potongan': instance.potongan,
      'total_bayar': instance.totalBayar,
      'tanggal': SettingJson.tglToJson(instance.tanggal),
      'status': instance.status,
      'menu': instance.menu,
    };
