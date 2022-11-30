// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailOrder _$$_DetailOrderFromJson(Map<String, dynamic> json) =>
    _$_DetailOrder(
      idMenu: json['id_menu'] as int,
      kategori: json['kategori'] as String? ?? '',
      topping: json['topping'] as String? ?? '',
      nama: json['nama'] as String? ?? '',
      foto: json['foto'] as String?,
      jumlah: json['jumlah'] as int,
      harga: json['harga'] == null ? '' : hargaFromJson(json['harga']),
      total: json['total'] as int,
      catatan: json['catatan'] as String? ?? '',
    );

Map<String, dynamic> _$$_DetailOrderToJson(_$_DetailOrder instance) =>
    <String, dynamic>{
      'id_menu': instance.idMenu,
      'kategori': instance.kategori,
      'topping': instance.topping,
      'nama': instance.nama,
      'foto': instance.foto,
      'jumlah': instance.jumlah,
      'harga': instance.harga,
      'total': instance.total,
      'catatan': instance.catatan,
    };
