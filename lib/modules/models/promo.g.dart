// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Promo _$$_PromoFromJson(Map<String, dynamic> json) => _$_Promo(
      idPromo: json['id_promo'] as int? ?? 0,
      nama: json['nama'] as String? ?? '',
      type: json['type'] as String? ?? '',
      diskon: json['diskon'] as int?,
      nominal: json['nominal'] as int?,
      kadaluarsa: json['kadaluarsa'] as int?,
      syaratKetentuan: json['syarat_ketentuan'] as String? ?? '',
      foto: json['foto'] as String?,
    );

Map<String, dynamic> _$$_PromoToJson(_$_Promo instance) => <String, dynamic>{
      'id_promo': instance.idPromo,
      'nama': instance.nama,
      'type': instance.type,
      'diskon': instance.diskon,
      'nominal': instance.nominal,
      'kadaluarsa': instance.kadaluarsa,
      'syarat_ketentuan': instance.syaratKetentuan,
      'foto': instance.foto,
    };
