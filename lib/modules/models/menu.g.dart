// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Menu _$$_MenuFromJson(Map<String, dynamic> json) => _$_Menu(
      idMenu: json['id_menu'] as int? ?? 0,
      nama: json['nama'] as String? ?? '',
      kategori: json['kategori'] as String? ?? '',
      harga: json['harga'] as int? ?? 0,
      deskripsi: json['deskripsi'] as String? ?? '',
      foto: json['foto'] as String? ?? AppConst.defaultMenuPhoto,
      status: json['status'] as int? ?? 0,
    );

Map<String, dynamic> _$$_MenuToJson(_$_Menu instance) => <String, dynamic>{
      'id_menu': instance.idMenu,
      'nama': instance.nama,
      'kategori': instance.kategori,
      'harga': instance.harga,
      'deskripsi': instance.deskripsi,
      'foto': instance.foto,
      'status': instance.status,
    };
