// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Discount _$$_DiscountFromJson(Map<String, dynamic> json) => _$_Discount(
      idDiskon: json['id_diskon'] as int? ?? 0,
      idUser: json['id_user'] as int? ?? 0,
      namaUser: json['nama_user'] as String? ?? '',
      nama: json['nama'] as String? ?? '',
      nominal: json['nominal'] as int? ?? 0,
    );

Map<String, dynamic> _$$_DiscountToJson(_$_Discount instance) =>
    <String, dynamic>{
      'id_diskon': instance.idDiskon,
      'id_user': instance.idUser,
      'nama_user': instance.namaUser,
      'nama': instance.nama,
      'nominal': instance.nominal,
    };
